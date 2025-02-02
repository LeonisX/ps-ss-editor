package md.leonis.extractor.utils;

import md.leonis.bin.Dump;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.ps.editor.model.Hero;
import md.leonis.ps.editor.model.SaveGame;
import md.leonis.ps.editor.model.SaveState;

import java.io.*;
import java.net.URISyntaxException;
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

    public static List<String> items = null;

    public static Dump dump;

    public static DungeonMap[] dungeonMaps = new DungeonMap[0x3D];

    public static List<String> mapRaw;

    static {
        try {
            dump = new Dump(new File("./other/ps.sms"));
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
        Path file;
        try {
            file = Paths.get(Config.class.getClassLoader().getResource("maps.txt").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
        mapRaw = Files.lines(file).filter(s -> !s.isEmpty()).collect(Collectors.toList());
    }

    public static void loadLanguageTable() throws IOException {
        String fileName = "english.tbl";
        try (InputStream inputStream = Config.class.getClassLoader().getResourceAsStream(fileName)) {
            if (inputStream == null) throw new FileNotFoundException("Language table not found: " + fileName);
            languageTable = new Properties();
            languageTable.load(inputStream);

        }
    }

    public static String getKeyByValue(char value) {
        return getKeyByValue(value + "");
    }

    public static String getKeyByValue(String value) {
        return Config.languageTable.entrySet().stream()
                .filter(e -> {
                    String v = e.getValue().toString().trim();
                    if (v.isEmpty()) return false;
                    if (v.equals(";")) return v.equals(value);
                    //System.out.println(v);

                    //if (v.split(";").length == 0) System.out.println(e);
                    return v.split(";")[0].trim().equals(value);
                }).findFirst()
                .map(objectEntry -> objectEntry.getKey().toString()).orElse("");
    }
}
