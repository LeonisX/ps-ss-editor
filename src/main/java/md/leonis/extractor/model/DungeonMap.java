package md.leonis.extractor.model;

import md.leonis.bin.Dump;

import java.util.Arrays;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class DungeonMap {
                                    // 01234567     89ABCDEF
    private static String textTiles = "░█▲▼─┼╪▐" + "◊9───┼╪F";
    private static String textTiles2= "░█▲▼─┼╪▒" + "◊9▲▼☺☺☺F";
    // 8 - сундуки, ловушки
    // 9 - не используется TODO переиначить на ловушки
    // A, B - подъём, спуск за дверью
    // C - человек за дверью
    // D - человек за запертой дверью
    // E - dark falz, lassic за м.дверью
    // F - не используется TODO переиначить на боссов


    private int[] data = new int[16 * 16]; // 8 bytes x 16 rows in ROM

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

    public int get(int x, int y) {
        return data[y * 16 + x];
    }

    public char getHex(int x, int y) {
        return Integer.toHexString(data[y * 16 + x]).charAt(0);
    }

    public String getTextTile(int x, int y) {
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

    public String toProperty(int index) {

        String result = Arrays.stream(data).mapToObj(d -> String.format("%X", d)).collect(Collectors.joining());
        String[] chunks = result.split("(?<=\\G.{16})");



        return IntStream.range(0, chunks.length).mapToObj(i -> String.format("dungeon%02X-%2X=%s\n", index, i, chunks[i])).collect(Collectors.joining());
    }
}
