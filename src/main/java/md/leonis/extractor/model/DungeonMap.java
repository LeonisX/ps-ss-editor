package md.leonis.extractor.model;

import md.leonis.bin.Dump;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class DungeonMap {
                                    // 01234567     89ABCDEF     GHIJKLMN     OPQRSTUV
    private static String textTiles = "░█▲▼─═≡▒" + "«●───═≡!" + "ΩΩΩi─═≡≡" + "!PQRSTUV";
    private static String textTiles2= "░█▲▼─═≡▒" + "»●▲▼☺☺☺!" + "▲▼─iiii!" + "iPQRSTUV";

    private static List<String> tiles = new ArrayList<>(Arrays.asList(
            //0     1     2     3     4     5     6     7     8     9
            "██", "░░", "▒▒", "()", "──", "══", "≡≡", "Ω▲", "Ω▼", "Ω─",
            //10   11    12    13    14    15    16    17    18    19
            "▲▲", "▼▼", "▲─", "▼─", "«»", "─«", "!«", "!!", "≡!", "!i",
            //20   21    22    23    24
            "ii", "i─", "i═", "TY", "??"
    ));


    private int[] data = new int[16 * 16]; // 8 bytes x 16 rows in ROM

    private int[][] map = new int[16][16];

    public DungeonMap(Dump dump) {
        for (int i = 0; i < 0x80; i++) {
            int pair = dump.getByte();
            int left = pair >>> 4 & 0xF;
            int right = pair & 0xF;
            data[i * 2] = left;
            data[i * 2 + 1] = right;
        }
    }

    public DungeonMap(String dump) {
        for (int i = 0; i < dump.length(); i++) {
            data[i] = Integer.parseInt(String.valueOf(dump.charAt(i)), 16);
        }
    }

    public DungeonMap(Properties prop, int index) {
        for (int y = 0; y < 16; y++) {
            //map[y] = new int[16];
            String line = prop.getProperty(String.format("dungeon%02X-%X", index, y));
            try {
                line = new String(line.getBytes("ISO-8859-1"), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            for (int x = 0; x < 16; x++) {
                String tile = line.substring(x * 2, x * 2 + 2);
                if (!tiles.contains(tile)) System.out.println("Tile not found: " + tile);
                map[y][x] = tiles.indexOf(tile);
            }
        }
    }

    public int get(int x, int y) {
        return data[y * 16 + x];
    }

    public char getHex(int x, int y) {
        return Integer.toHexString(data[y * 16 + x]).charAt(0);
    }

    private String getTextTile(int x, int y) {
        int value = get(x, y);
        return "" + textTiles.charAt(value) + textTiles2.charAt(value);
    }

    public String drawAsText() {
        StringBuilder stringBuilder = new StringBuilder();
        for (int y = 0; y < 16; y++) {
            for (int x = 0; x < 16; x++) {
                stringBuilder.append(getTextTile(x, y));
            }
            stringBuilder.append("\n");
        }
        return stringBuilder.toString();
    }

    public String drawAsText2() {
        StringBuilder stringBuilder = new StringBuilder();
        for (int y = 0; y < 16; y++) {
            for (int x = 0; x < 16; x++) {
                stringBuilder.append(tiles.get(map[y][x]));
            }
            stringBuilder.append("\n");
        }
        return stringBuilder.toString();
    }

    public String toProperty(int index) {

        String result = Arrays.stream(data).mapToObj(d -> "" + textTiles.charAt(d) + textTiles2.charAt(d)).collect(Collectors.joining());
        String[] chunks = result.split("(?<=\\G.{32})");



        return IntStream.range(0, chunks.length)
                .mapToObj(i -> String.format("dungeon%02X-%X=%s\n", index, i, chunks[i]))
                .collect(Collectors.joining());
    }

}
