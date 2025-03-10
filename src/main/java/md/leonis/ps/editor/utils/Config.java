package md.leonis.ps.editor.utils;

import md.leonis.bin.Dump;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.ps.editor.model.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;

public class Config {
    /*static String apiPath;
    public static String sitePath;
    static String sampleVideo;*/

    public static Properties languageTable;

    static final String resourcePath = "/fxml/";

    public static File saveStateFile;

    public static SaveState saveState;
    public static SaveState blankSaveState;
    public static SaveState newSaveState;

    public static SaveGame currentSaveGame = null;

    public static Integer currentHeroIndex;
    public static Hero currentHero = null;

    public static List<String> items = null;

    public static List<String> churches = null;

    public static List<String> heroes = null;

    public static List<String> spells = null;

    // http://www.pscave.com/ps1/faqwalkthrough2.txt
    //TODO read from ROM
    public static List<Item> weapons = null;
    public static List<Item> armors = null;
    public static List<Item> shields = null;
    //public static List<Item> combatSpells = null;
    //public static List<Item> curativeSpells = null;

    public static List<String> weaponNames = null;
    public static List<String> armorNames = null;
    public static List<String> shieldNames = null;

    public static String none;

    public static List<String> states = new LinkedList<>(Arrays.asList("great", "tired", "injured", "weak", "dead"));

    public static Properties levels;

    public static List<Monster> monsters;

    public static int[][] battleSpells = {{4, 9, 14, 3, 1}, {10, 12, 17, 7}, {}, {3, 11, 18, 6, 13}};
    public static int[][] overworldSpells = {{4, 15}, {10, 16, 2}, {}, {10, 2, 11, 5, 8}};

    public static DungeonMap[] dungeonMaps = new DungeonMap[0x3D];


    //static final String resourcePath = "/" + MainStageController.class.getPackage().getName().replaceAll("\\.", "/") + "/";

    public static void loadBlankSaveState() throws IOException {
        try (InputStream inputStream = Config.class.getClassLoader().getResourceAsStream("blank.ssm")) {
            if (inputStream == null) throw new FileNotFoundException("BlankSaveState file isn't found...");
            blankSaveState = new SaveState(new Dump(inputStream));
        }
    }

    public static void loadProperties() throws IOException {
        try (InputStream inputStream = Config.class.getClassLoader().getResourceAsStream("config.properties")) {
            if (inputStream == null) throw new FileNotFoundException("Property file isn't found...");
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
            if (inputStream == null) throw new FileNotFoundException("Language table isn't found: " + fileName);
            languageTable = new Properties();
            languageTable.load(inputStream);

            churches = getChurchNames();
            heroes = getHeroesNames();
            spells = getSpellsNames();

/*            for (int i = 0; i < 4; i++) {
                System.out.println(i);
                int max = getLevel(i, 30).getCombatSpells();
                for (int j = 0; j < max; j++) {
                    System.out.println(spells.get(battleSpells[i][j]));
                }
                System.out.println();
            }
            for (int i = 0; i < 4; i++) {
                System.out.println(i);
                int max = getLevel(i, 30).getCurativeSpells();
                for (int j = 0; j < max; j++) {
                    System.out.println(spells.get(overworldSpells[i][j]));
                }
                System.out.println();
            }*/

            weapons = getWeapons();
            armors = getArmors();
            shields = getShields();

            weaponNames = getNames(weapons);
            armorNames = getNames(armors);
            shieldNames = getNames(shields);

            none = languageTable.getProperty("none");

            items = getItemNames();

            prepend(weaponNames);
            prepend(armorNames);
            prepend(shieldNames);
        }

        loadMonsters();
    }

    public static void loadLevels() throws IOException {
        String fileName = "levels.csv";
        try (InputStream inputStream = Config.class.getClassLoader().getResourceAsStream(fileName)) {
            if (inputStream == null) throw new FileNotFoundException("Levels file isn't found: " + fileName);
            levels = new Properties();
            levels.load(inputStream);
        }
    }

    private static List<String> getNames(List<Item> items) {
        List<String> result = new LinkedList<>();
        items.forEach(i -> result.add(i.getName()));
        return result;
    }

    private static List<String> getItemNames() {
        List<String> items = getGroup("item");
        items.addAll(0, shieldNames);
        items.addAll(0, armorNames);
        items.addAll(0, weaponNames);
        prepend(items);
        return items;
    }

    private static void prepend(List<String> strings) {
        strings.add(0, none);
    }

    private static List<String> getChurchNames() {
        return getGroup("church");
    }

    private static List<String> getHeroesNames() {
        return getGroup("hero");
    }

    public static List<String> getSpellsNames() {
        return getGroup("spell");
    }

    public static String getKeyByValue(char value) {
        return getKeyByValue(value + "");
    }

    public static String getKeyByValue(String value) {
        return Config.languageTable.entrySet().stream()
                .filter(e -> {
                    String val = e.getValue().toString();
                    if (val.length() == 1) {
                        return val.equals(value);
                    } else {
                        return val.split(";")[0].trim().equals(value);
                    }
                }).findFirst()
                .map(objectEntry -> objectEntry.getKey().toString()).orElse("");
    }

    public static List<Geo> geos;
    public static List<Geo> trackGeos;

    static {
        geos = loadMaps("maps-results.csv");
        trackGeos = loadMaps("track-maps.csv");
        loadMaps();
    }

    private static List<Geo> loadMaps(String fileName) {
        ClassLoader classLoader = Config.class.getClassLoader();
        File file = new File(classLoader.getResource(fileName).getFile());
        LinkedList<Geo> geos = new LinkedList<>();
        try {
            List<String> list = Files.readAllLines(file.toPath(), Charset.defaultCharset());
            list.forEach(r -> geos.add(Geo.fromCSV(r)));
        } catch (IOException e) {
            e.printStackTrace();
        }

        return geos;
    }

    public static void loadMaps() {
        try (InputStream inputStream = md.leonis.extractor.utils.Config.class.getClassLoader().getResourceAsStream("dungeons.properties")) {
            if (inputStream == null) throw new FileNotFoundException("Dungeons file not found...");
            Properties prop = new Properties();
            prop.load(inputStream);
            for (int i = 0; i < dungeonMaps.length; i++) {
                dungeonMaps[i] = new DungeonMap(prop, i);
                //System.out.println(dungeonMaps[i].drawAsText2());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static void loadMonsters() {
        ClassLoader classLoader = Config.class.getClassLoader();
        File file = new File(classLoader.getResource("monsters.csv").getFile());
        monsters = new LinkedList<>();
        try {
            List<String> list = Files.readAllLines(file.toPath(), Charset.defaultCharset());
            list.forEach(r -> monsters.add(Monster.fromCSV(r)));
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public static List<Item> getWeapons() {
        return getItem("weapon");
    }

    public static List<Item> getArmors() {
        return getItem("armor");
    }

    public static List<Item> getShields() {
        return getItem("shield");
    }


    private static List<Item> getItem(String group) {
        return getGroup(group).stream()
                .map(value -> new Item(value.split(";")))
                .collect(Collectors.toList());
    }

    private static List<String> getGroup(String group) {
        long count = languageTable.keySet().stream()
                .filter(k -> ((String) k).matches("^" + group + "[0-9]*$")).count();
        List<String> result = new LinkedList<>();
        for (int i = 0; i < count; i++) {
            result.add(languageTable.getProperty(group + i));
        }
        return result;
    }

    public static void selectCurrentHero(int index) {
        currentHeroIndex = index;
        Config.currentHero = Config.currentSaveGame.getHeroes()[index];
    }

    public static Level getLevel(int heroId, int level) {
        return Level.fromCSV(Config.levels.getProperty(String.format("hero%s-%s", heroId, level)));
    }
}
