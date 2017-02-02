package md.leonis.extractor.utils;

import javafx.scene.canvas.GraphicsContext;

public class Map {

    private Integer[] data;
    private int width;
    private int height;

    public Map(Integer[] data) {
        this.data = data;
    }

    public void draw(GraphicsContext gc, Palette palette, Tile[] tiles, BigTile[] bigTiles, int x, int y) {
        gc.clearRect(0,0,512, 512);
        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                bigTiles[91].draw(gc, palette, tiles, j * 16, i * 16);
            }
        }
        for (int i = 0, index = 0; i < height; i++) {
            int xOffset = 0;
            for (int j = 0; j < width; j++) {
                //System.out.println(index);
                if ((data[index] < bigTiles.length)) {
                    bigTiles[data[index]].draw(gc, palette, tiles, x+ j * 16 + xOffset, y + i * 16);
                } else {
                    //AD 173
                    //bigTiles[map[index]].draw(gc, palette, tiles, j * 16, i * 16);
                    System.out.println(index + ": " + data[index]);
                    xOffset = 1 * 0;
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
