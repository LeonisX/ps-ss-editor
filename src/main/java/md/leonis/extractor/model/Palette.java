package md.leonis.extractor.model;


import javafx.scene.paint.Color;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.LinkedList;
import java.util.List;

public class Palette {

    private static final int[] values = {0, 85, 170, 255};

    public static Palette camineetPalette = new Palette(new int[]{
            0x09, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x08,
            0x09, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x08, 0x0C
    });
    public static Palette gothicPalette = new Palette(new int[]{
            0x08, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x08,
            0x08, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x0C, 0x04
    });
    public static Palette scionPalette = new Palette(new int[]{
            0x2A, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x08,
            0x2A, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x2A, 0x2A
    });
    public static Palette paseoPalette = new Palette(new int[]{
            0x2F, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x08,
            0x2F, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x0B, 0x06
    });
    public static Palette skureSurfacePalette = new Palette(new int[]{
            0x3F, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x3F,
            0x3F, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x3C, 0x38
    });
    public static Palette skurePalette = new Palette(new int[]{
            0x00, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x08,
            0x00, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x00, 0x00
    });
    public static Palette airCastlePalette = new Palette(new int[]{
            0x3C, 0x00, 0x3F, 0x06, 0x2F, 0x0B, 0x0C, 0x04, 0x2A, 0x25, 0x3C, 0x38, 0x30, 0x03, 0x02, 0x08,
            0x3C, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x3C, 0x3C
    });
    public static Palette palmaPalette = new Palette(new int[]{
            0x08, 0x00, 0x3F, 0x01, 0x03, 0x0B, 0x0F, 0x2F, 0x06, 0x38, 0x3C, 0x25, 0x2A, 0x04, 0x30, 0x0C,
            0x08, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x08, 0x00
    });
    public static Palette motaviaPalette = new Palette(new int[]{
            0x08, 0x00, 0x3F, 0x01, 0x03, 0x0B, 0x0F, 0x2F, 0x06, 0x38, 0x3C, 0x25, 0x2A, 0x04, 0x30, 0x0C,
            0x2F, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x3F, 0x00
    });
    public static Palette dezorisPalette = new Palette(new int[]{
            0x3F, 0x00, 0x3F, 0x24, 0x03, 0x3C, 0x0F, 0x3F, 0x28, 0x38, 0x3C, 0x25, 0x2A, 0x04, 0x30, 0x0C,
            0x3F, 0x00, 0x3F, 0x2B, 0x0B, 0x2F, 0x37, 0x0F, 0x38, 0x34, 0x06, 0x01, 0x2A, 0x25, 0x09, 0x00
    });
    public static final Color[] smsPalette = generateSmsPalette();

    private final int[] palette;
    private final int[] colors; // Emulicious


    private Palette(int[] palette) {
        this.palette = palette;
        this.colors = getIntColors();
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
            j = j >> 2;
            double g = values[j & 3] / 255.0;
            j = j >> 2;
            double b = values[j & 3] / 255.0;
            palette[i] = new Color(r, g, b, 1);
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


    public void saveToFile(String fileName) {
        List<String> lines = new LinkedList<>();
        for (int i = 0; i < 16; i++) {
            Color color = get(i);
            int r = (int) (color.getRed() * 255);
            int g = (int) (color.getGreen() * 255);
            int b = (int) (color.getBlue() * 255);
            lines.add(String.format("%d %d %d", r, g, b));
        }

        try {
            Files.write(Paths.get(fileName), lines, Charset.defaultCharset());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    // Emulicious format the same?
    // 00000000 rrrrrrrr gggggggg bbbbbbbb
    private int getIntColor(int index) {
        int j = palette[index];
        int r = values[j & 3];
        j = j >> 2;
        int g = values[j & 3];
        j = j >> 2;
        int b = values[j & 3];
        return ((r & 0x0ff) << 16) | ((g & 0x0ff) << 8) | (b & 0x0ff);
    }

    private int[] getIntColors() {
        int[] result = new int[palette.length];
        for (int i = 0; i < palette.length; i++) {
            result[i] = getIntColor(i);
        }
        return result;
    }

    // Input data:
    // int[] palette: array of: [00rrggbb, 00rrggbb, ...] (native SMS/GG palettes)
    // int[] colors: array of [ 00000000rrrrrrrrggggggggbbbbbbbb, ...] (Emulicious format?)

    // Export to DTM Palette (*.pal)
    // Djinn Tile Viewer, Phantasy Star Save Editor
    public void exportAsDtm(String fileName) {
        List<String> lines = new LinkedList<>();
        for (int color : colors) {
            int r = (color >> 16) & 0xff;
            int g = (color >> 8) & 0xff;
            int b = (color) & 0xff;
            lines.add(String.format("%d %d %d", r, g, b));
        }
        saveStringList(fileName, lines);
    }

    // Export to JASC Palette (*.pal)
    // IrfanView, Paint Shop Pro, other editors
    public void exportAsJasc(String fileName) {
        List<String> lines = new LinkedList<>();
        lines.add("JASC-PAL");
        lines.add("0100");
        int size = colors.length <= 16 ? 16 : 256;
        lines.add(Integer.toString(size));
        for (int i = 0; i < size; i++) {
            if (i < colors.length) {
                int r = (colors[i] >> 16) & 0xff;
                int g = (colors[i] >> 8) & 0xff;
                int b = (colors[i]) & 0xff;
                lines.add(String.format("%d %d %d", r, g, b));
            } else {
                lines.add("0 0 0");
            }
        }
        saveStringList(fileName, lines);
    }

    // Export to GIMP Palette (*.gpl)
    // GIMP, other editor
    public void exportAsGimp(String fileName) {
        List<String> lines = new LinkedList<>();
        lines.add("GIMP Palette");
        lines.add("Name: Emulicious");
        lines.add("Columns: 16");
        lines.add("#");
        for (int i = 0; i < colors.length; i++) {
            int r = (colors[i] >> 16) & 0xff;
            int g = (colors[i] >> 8) & 0xff;
            int b = (colors[i]) & 0xff;
            lines.add(String.format("%3s %3s %3s Color %d", r, g, b, i));
        }
        saveStringList(fileName, lines);
    }


    // Export to RAW dump (*.raw) MEKA
    // Master Tile Converter, hex editors
    // This method is actual for SMS/GG systems
    public void exportAsRaw(String fileName) {
        try {
            BufferedWriter outputWriter = null;
            outputWriter = new BufferedWriter(new FileWriter(fileName));
            for (int i = 0; i < palette.length; i++) {
                outputWriter.write((byte) palette[i]);
            }
            outputWriter.flush();
            outputWriter.close();
        } catch (Exception e) {

        }
    }


    private void saveStringList(String fileName, List<String> lines) {
        try {
            Files.write(Paths.get(fileName), lines, Charset.defaultCharset());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
