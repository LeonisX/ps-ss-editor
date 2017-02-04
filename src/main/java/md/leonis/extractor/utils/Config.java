package md.leonis.extractor.utils;

import md.leonis.bin.Dump;
import md.leonis.ps.editor.model.Hero;
import md.leonis.ps.editor.model.SaveGame;
import md.leonis.ps.editor.model.SaveState;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Config {
    /*static String apiPath;
    public static String sitePath;
    static String sampleVideo;*/

    public static Properties languageTable;

    public static final String resourcePath = "/extractor/";

    public static File saveStateFile;

    public static SaveState saveState;

    public static SaveGame currentSaveGame = null;

    public static Hero currentHero =  null;

    public static Dump dump;

    static {
        try {
            dump = new Dump(new File("/home/leonis/ps.sms"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //static final String resourcePath = "/" + MainStageController.class.getPackage().getName().replaceAll("\\.", "/") + "/";

    public static void loadProperties() throws IOException {
        try (InputStream inputStream = Config.class.getClassLoader().getResourceAsStream("config.properties")) {
            if (inputStream == null) throw new FileNotFoundException("Property file not found...");
            Properties prop = new Properties();
            prop.load(inputStream);
            /*apiPath = prop.getProperty("api.path");
            sitePath = prop.getProperty("site.path");
            sampleVideo = prop.getProperty("sample.video");*/
        }
    }

}
