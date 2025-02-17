package md.leonis.extractor.utils;

import md.leonis.bin.Dump;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.ps.editor.model.Hero;
import md.leonis.ps.editor.model.Item;
import md.leonis.ps.editor.model.SaveGame;
import md.leonis.ps.editor.model.SaveState;

import java.io.*;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.LinkedList;
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
            dump = new Dump(new File("./other/ps.sms"));
            dump.setCharset("windows-1252");
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
            file = Paths.get(Config.class.getClassLoader().getResource("maps.raw").toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
        mapRaw = Files.lines(file).filter(s -> !s.isEmpty()).collect(Collectors.toList());
    }

    //todo copy from another config. need to unify


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
        return languageTable.entrySet().stream()
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
}
