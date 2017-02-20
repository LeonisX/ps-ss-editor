package md.leonis.extractor.utils;

import md.leonis.bin.Dump;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.ps.editor.model.Hero;
import md.leonis.ps.editor.model.SaveGame;
import md.leonis.ps.editor.model.SaveState;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

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

    public static DungeonMap[] dungeonMaps = new DungeonMap[0x3D];

    public static List<String> mapRaw;

    static {
        try {
            dump = new Dump(new File("/home/leonis/ps.sms"));
            loadMapsTxt();
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

    public static void loadMaps() {
        try (InputStream inputStream = Config.class.getClassLoader().getResourceAsStream("dungeons.properties")) {
            if (inputStream == null) throw new FileNotFoundException("Dungeons file not found...");
            Properties prop = new Properties();
            prop.load(inputStream);
            for (int i = 0; i < dungeonMaps.length; i++) {
                dungeonMaps[i] = new DungeonMap(prop, i);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void loadMapsTxt() throws IOException {
        Path file = Paths.get(Config.class.getClassLoader().getResource("maps.txt").getFile());
        mapRaw = Files.lines(file).filter(s -> !s.isEmpty()).collect(Collectors.toList());
    }
}
