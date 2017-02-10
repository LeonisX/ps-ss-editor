package md.leonis.ps.editor.utils;

import md.leonis.ps.editor.model.Geo;
import md.leonis.ps.editor.model.Hero;
import md.leonis.ps.editor.model.SaveGame;
import md.leonis.ps.editor.model.SaveState;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;

public class Config {
    /*static String apiPath;
    public static String sitePath;
    static String sampleVideo;*/

    public static Properties languageTable;

    public static final String resourcePath = "/fxml/";

    public static File saveStateFile;

    public static SaveState saveState;

    public static SaveGame currentSaveGame = null;

    public static Hero currentHero =  null;


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

    //TODO input
    public static void loadLanguageTable() throws IOException {
        String fileName = "english.tbl";
        try (InputStream inputStream = Config.class.getClassLoader().getResourceAsStream(fileName)) {
            if (inputStream == null) throw new FileNotFoundException("Language table not found: " + fileName);
            languageTable = new Properties();
            languageTable.load(inputStream);
        }
    }

    public static String getHeroName(int index) {
        return languageTable.getProperty("hero" + index);
    }

    public static String getItemName(int index) {
        return languageTable.getProperty("item" + index);
    }

    public static String getKeyByValue(char value) {
        //System.out.println(Config.languageTable.entrySet().stream().filter(e -> e.getValue().equals(value + "")).findFirst());
        return Config.languageTable.entrySet().stream().filter(e -> e.getValue().equals(value + "")).findFirst()
                .map(objectEntry -> objectEntry.getKey().toString()).orElse("");
    }

    //public static Gson gson = new Gson();

    public static List<Geo> geos;

    static {
        ClassLoader classLoader = Config.class.getClassLoader();
        File file = new File(classLoader.getResource("results.csv").getFile());
/*        JsonReader jsonReader = null;
        try {
            jsonReader = new JsonReader(new FileReader(file));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        return gson.fromJson(jsonReader, new TypeToken<List<Geo>>(){}.getType());*/

        geos = new LinkedList<>();
        try {
            List<String> list = Files.readAllLines(file.toPath(), Charset.defaultCharset() );
            list.forEach(r -> {
                String[] chunks = r.replace("\"","").split(";");
                String map = chunks[2].substring(2) + chunks[2].substring(0, 2);
                //System.out.println(chunks[2] + " " + map);
                geos.add(new Geo(chunks[8],
                        Integer.parseInt(chunks[0], 16),
                        Integer.parseInt(chunks[1],16),
                        Integer.parseInt(map,16), // map
                        Integer.parseInt(chunks[5],16),
                        Integer.parseInt(chunks[4],16),
                        Integer.parseInt(chunks[3],16),
                        0,
                        0,
                        0,
                        Integer.parseInt(chunks[1],16),
                        Integer.parseInt(chunks[0],16),
                        Integer.parseInt(chunks[6],16),
                        Integer.parseInt(chunks[7],16),
                        0)
                );
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
