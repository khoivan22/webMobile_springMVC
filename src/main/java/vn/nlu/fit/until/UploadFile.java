package vn.nlu.fit.until;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

public class UploadFile {

    public static String upFile(MultipartFile multipartFile, HttpServletRequest request) throws IOException {
        String link = request.getServletContext().getRealPath("/img/upload/");
        LocalDateTime now = LocalDateTime.now();

        File dirYear = new File(link + File.separator + now.getYear() + File.separator);
        File dirMonth = new File(dirYear.getPath() + File.separator +now.getMonth() + File.separator);
        if(!dirYear.exists()){
            dirYear.mkdir();
        }
        if(!dirMonth.exists())
            dirMonth.mkdir();


        String fileName = multipartFile.getOriginalFilename();
        if (fileName != null) {
            File file = new File(dirMonth.getPath(), fileName);
            multipartFile.transferTo(file);
        }

        return "/img/upload/" + now.getYear() + "/" + now.getMonth() + "/" + fileName;
    }

    public static String upFiles(List<MultipartFile> multipartFiles, HttpServletRequest request) throws IOException {
        StringBuilder imgs = new StringBuilder();

        for (MultipartFile file : multipartFiles) {
            if (!file.isEmpty())
                imgs.append(upFile(file, request)).append("~");
        }
        if (imgs.length() < 2)
            return "";
        return imgs.toString();
    }

    public static void main(String[] args) {
        LocalDateTime now = LocalDateTime.now();
        System.out.println(now.getYear());
    }
}
