package md.leonis.extractor.model;

import md.leonis.bin.Dump;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

public class DungeonMap {

    private static final List<String> tiles = new ArrayList<>(Arrays.asList(
            //0     1     2     3     4     5     6     7     8     9
            "██", "░░", "▒▒", "()", "──", "══", "≡≡", "Ω▲", "Ω▼", "Ω─",
            //10   11    12    13    14    15    16    17    18    19
            "▲▲", "▼▼", "▲─", "▼─", "«»", "─«", "!«", "!!", "≡!", "!i",
            //20   21    22    23    24
            "ii", "i─", "i═", "OD", "??"
            // 0 - Стена
            // 1 - Проход
            // 2 - Потайной проход
            // 3 - Ловушка
            // 4 - Дверь
            // 5 - Запертая дверь
            // 6 - Дверь, запертая магией
            // 7 - Выход из подземелья (вверх)
            // 8 - Выход из строения (вниз)
            // 9 -
            // 10 - Лестница вверх
            // 11 - Лестница вниз
            // 12 -
            // 13 -
            // 14 - Сундук
            // 15 -
            // 16 -
            // 17 - Босс
            // 18 -
            // 19 -
            // 20 -
            // 21 - NPC, просто говорит, находится за дверью.
            // 22 - Odin (Tylon)
            // 23 -
            // 24 -
    ));

    // 8 bytes x 16 rows in ROM
    private final int[][] map = new int[16][16];

    public DungeonMap(Dump dump) {
        // 8 bytes x 16 rows in ROM
        int[] data = new int[16 * 16];
        for (int i = 0; i < 0x80; i++) {
            int pair = dump.getByte();
            int left = pair >>> 4 & 0xF;
            int right = pair & 0xF;
            data[i * 2] = left;
            data[i * 2 + 1] = right;
        }
        for (int i = 0; i < data.length; i += 16) {
            System.out.println(Arrays.toString(Arrays.copyOfRange(data, i, Math.min(data.length, i + 16))));
        }
    }

    public DungeonMap(Properties prop, int index) {
        for (int y = 0; y < 16; y++) {
            //map[y] = new int[16];
            String line = prop.getProperty(String.format("dungeon%02X-%X", index, y));
            line = new String(line.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
            for (int x = 0; x < 16; x++) {
                String tile = line.substring(x * 2, x * 2 + 2);
                if (!tiles.contains(tile)) System.out.println("Tile not found: " + tile);
                map[y][x] = tiles.indexOf(tile);
            }
        }
    }

    public int get(int x, int y) {
        return map[y][x];
    }

    public String drawAsText2() {
        StringBuilder sb = new StringBuilder();
        for (int y = 0; y < 16; y++) {
            drawLine(sb, y);
            sb.append("\n");
        }
        return sb.toString();
    }

    public void drawLine(StringBuilder sb, int y) {
        for (int x = 0; x < 16; x++) {
            sb.append(tiles.get(map[y][x]));
        }
    }

    public void audit(int i) {
        System.out.println("Dungeon #" + String.format("%02X", i));
        for (int y = 0; y < 16; y++) {
            for (int x = 0; x < 16; x++) {
                int value = map[y][x];
                if (value == 14)
                    System.out.println("       Chest " + String.format("%01X%01X   %s", y, x, tiles.get(map[y][x])));
                if (value == 15)
                    System.out.println("       Chest " + String.format("%01X%01X   %s", y, x, tiles.get(map[y][x])));
                if (value == 16)
                    System.out.println("       Chest " + String.format("%01X%01X   %s", y, x, tiles.get(map[y][x])));
                if (value == 23)
                    System.out.println("       !!Quest " + String.format("%01X%01X %s", y, x, tiles.get(map[y][x])));
                if (value == 16)
                    System.out.println("       Monster " + String.format("%01X%01X %s", y, x, tiles.get(map[y][x])));
                if (value == 17)
                    System.out.println("       Monster " + String.format("%01X%01X %s", y, x, tiles.get(map[y][x])));
                if (value == 18)
                    System.out.println("       Boss " + String.format("%01X%01X    %s", y, x, tiles.get(map[y][x])));
                if (value == 19)
                    System.out.println("       Monster " + String.format("%01X%01X %s", y, x, tiles.get(map[y][x])));
            }
        }
    }
}
