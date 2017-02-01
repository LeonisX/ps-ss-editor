package md.leonis.extractor.utils;


import javafx.scene.canvas.GraphicsContext;
import javafx.scene.image.PixelWriter;

import java.util.Arrays;

public class Tile {

    int[] data = new int[8 * 8];

    public Tile() {
    }

    public int[] getData() {
        return data;
    }

    public void setData(int[] data) {
        this.data = data;
    }

    public void draw(GraphicsContext tileGc, Palette palette, int paletteOffset, int x, int y) {
        PixelWriter pixelWriter = tileGc.getPixelWriter();
        int index = 0;
        for (int k = 0; k < 8; k++) { // y
            for (int l = 0; l < 8; l++) { // x
                pixelWriter.setColor(l + x, k + y, palette.get(paletteOffset + data[index++]));
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
