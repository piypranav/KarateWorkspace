package utils;

import java.io.File;
import java.nio.file.Files;

public class BDDUtil {

    public static String getStaticMethod() {
        return "hello world";
    }

    public String getNonStaticMethod(){
        System.out.println("test");
        return "hello world from non static emthod";
    }


    public static void writeToFile(String filename, String content)
    {
        try {
            File f = new File(filename);
            Files.write(f.toPath(), content.getBytes());
            System.out.println("File ==> " + f.getAbsolutePath());
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}