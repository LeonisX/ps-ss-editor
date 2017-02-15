package md.leonis.extractor.model;

import md.leonis.bin.Dump;

public class DungeonMap {
                                    // 0123456789ABCDEF
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
            if (left == 0xD) System.out.println("D");
            if (right ==0xD) System.out.println("D");
            if (left == 0xF) System.out.println("F");
            if (right == 0xF) System.out.println("F");
            data[i * 2] = left;
            data[i * 2 + 1] = right;
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
}
