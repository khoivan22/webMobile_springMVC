package vn.nlu.fit.until;

public class Until {
public static String createId(String id){
    String[] s= id.split("\\.");
    return s[0]+"."+(Integer.parseInt(s[1])+1)+"";
}

}
