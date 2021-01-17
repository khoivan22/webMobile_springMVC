package vn.nlu.fit.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import vn.nlu.fit.entity.UserEntity;

public class UserValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(UserEntity.class);
    }

    @Override
    public void validate(Object object, Errors errors) {
        UserEntity user = (UserEntity) object;
        checkPasswd(user, errors);
        checkName(user, errors);
        checkPhone(user, errors);
        checkMail(user, errors);
        checkUserName(user, errors);
    }


    private void checkPasswd(UserEntity user, Errors errors) {
        // TODO Auto-generated method stub

        if (user.getPASSWORD().length() < 8) {
            errors.rejectValue("PASSWORD", "passwd.size");
            errors.rejectValue("REPASS", "passwd.size");
        } else if (!user.getPASSWORD().equals(user.getREPASS())){
            errors.rejectValue("PASSWORD", "passwd.notEqual.repasswd");
            errors.rejectValue("REPASS", "passwd.notEqual.repasswd");
        }

    }

    public void checkName(UserEntity user, Errors errors) {
        if (user.getFULLNAME().length() < 3) {
            errors.rejectValue("FULLNAME", "name.size");
        }
    }

    public void checkPhone(UserEntity user, Errors errors) {
        if (user.getPHONE().matches("\\d") || user.getPHONE().length() != 10) {
            errors.rejectValue("PHONE", "phone.valid");
        }
    }

    public void checkMail(UserEntity user, Errors errors) {
        // TODO Auto-generated method stub
        if (!user.getEMAIL().matches("\\b[\\w.%-]+@[-.\\w]+\\.[A-Za-z]{2,4}\\b"))
            errors.rejectValue("EMAIL", "email.valid");
    }

    public void checkUserName(UserEntity user, Errors errors) {
        // TODO Auto-generated method stub
        if (user.getUSER_NAME().length() < 6)
            errors.rejectValue("USER_NAME", "userName.size");
    }

    public void checkUserExist(Errors errors, boolean check) {
        if (check) {
            errors.rejectValue("USER_NAME", "user.existed");
        }
    }

    public void checkEmailExist(Errors errors, boolean check) {
        if (check) {
            errors.rejectValue("EMAIL", "email.existed");
        }
    }

}
