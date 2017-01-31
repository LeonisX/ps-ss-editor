package md.leonis.extractor.utils;


import javafx.scene.paint.Color;

public class Palette {

    public static int[] values = {0, 85, 170, 255};

    public static Color[] smsPalette = generateSmsPalette();

    public final int[] palette;

    public Palette(int[] palette) {
        this.palette = palette;
        for (int i = 0; i < 32; i ++) {
            System.out.println(Integer.toHexString(palette[i]));
        }
    }

    public Palette() {
        palette = new int[]{
                0x09, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x08,
                0x09, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x08, 0x0C
        };
    }

    /*
    Master System Palette
    Consists of 16 colors, each represented by eight bits (a single byte) in the format 00BBGGRR,
    where BB = blue; GG = green; and RR = red. The BB, GG and RR can be any of the following values:

    00 = 0
    01 = 85
    10 = 170
    11 = 255

    As such, the highest palette value is 00111111, which is 3F when converted to a byte.
    */
    private static Color[] generateSmsPalette() {
        Color[] palette = new Color[64];
        for (int i = 0; i < 64; i++) {
            int j = i;
            double r = values[j & 3] / 255.0;
            //System.out.println(j + ": " + values[j & 3]);
            j = j >> 2;
            double g = values[j & 3] / 255.0;
            j = j >> 2;
            double b = values[j & 3] / 255.0;
            palette[i] = new Color(r, g, b, 1);
            //System.out.println(palette[i]);
        }
        return palette;
    }

    public Color get(int index) {
        int j = palette[index];
        double r = values[j & 3] / 255.0;
        //System.out.println(j + ": " + values[j & 3]);
        j = j >> 2;
        double g = values[j & 3] / 255.0;
        j = j >> 2;
        double b = values[j & 3] / 255.0;
        return new Color(r, g, b, 1);

    }
}
