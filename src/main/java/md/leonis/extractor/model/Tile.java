package md.leonis.extractor.model;

import javafx.scene.canvas.GraphicsContext;
import javafx.scene.image.PixelWriter;

import java.util.Arrays;

public class Tile {

    private int[] data = new int[8 * 8];

    public Tile() {
    }

    public int[] getData() {
        return data;
    }

    public void setData(int[] data) {
        this.data = data;
    }

    public void draw(GraphicsContext tileGc, Palette palette, int paletteOffset, boolean ishFlip, boolean isvFlip, int xOffset, int yOffset) {
        PixelWriter pixelWriter = tileGc.getPixelWriter();
        //int index = 0;
        int kx = 0;
        int sx = 1;
        if (ishFlip) {
            kx = 7;
            sx = -1;
        }
        int ky = 0;
        int sy = 1;
        if (isvFlip) {
            ky = 7;
            sy = -1;
        }
        for (int y = 0; y < 8; y++) { // y
            for (int x = 0; x < 8; x++) { // x
                int index = kx + sx * x + 8 * (ky + sy * y);
                pixelWriter.setColor(x + xOffset, y + yOffset, palette.get(paletteOffset + data[index]));
            }
        }
        //toString();
    }

    @Override
    public String toString() {
        for (int i = 0; i < 8; i ++) {
            for (int j = 0; j < 8; j ++) {
                System.out.print(String.format("%01X", data[i * 8 + j]));
            }
            System.out.println();
        }
        return "Tile{" +
                "data=" + Arrays.toString(data) +
                '}';
    }
}
