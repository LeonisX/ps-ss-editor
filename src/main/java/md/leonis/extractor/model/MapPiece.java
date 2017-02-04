package md.leonis.extractor.model;

import javafx.scene.canvas.GraphicsContext;

public class MapPiece {

    private Integer[] data;
    private int width = 16;
    private int height = 12;

    public MapPiece(Integer[] data) {
        this.data = data;
    }

    public void draw(GraphicsContext gc, Palette palette, Tile[] tiles, BigTile[] bigTiles, int xOffset, int yOffset) {
        for (int y = 0, index = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                if ((index < data.length && data[index] < bigTiles.length)) {
                    bigTiles[data[index]].draw(gc, palette, tiles, xOffset + x * 16, yOffset + y * 16);
                } else {
                    if (index < data.length) System.out.println(index + ": " + data[index]);
                }
                index++;
            }
        }
    }

    public Integer[] getData() {
        return data;
    }

    public void setData(Integer[] data) {
        this.data = data;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }
}
