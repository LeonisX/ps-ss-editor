package md.leonis.extractor.utils;

import javafx.scene.canvas.GraphicsContext;

public class Map {

    private Integer[] data;
    private int width = 16;
    private int height = 12;

    public Map(Integer[] data) {
        this.data = data;
    }

    public void draw(GraphicsContext gc, Palette palette, Tile[] tiles, BigTile[] bigTiles, int xOffset, int yOffset) {
        //gc.clearRect(0,0,512, 512);
        //TODO correct background
/*        for (int i = 0; i < height; i++) {
            for (int j = 0; j < width; j++) {
                bigTiles[91].draw(gc, palette, tiles, j * 16, i * 16);
            }
        }*/
        //TODO correct transparent
        for (int y = 0, index = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                //System.out.println(index);
                if ((index < data.length && data[index] < bigTiles.length)) {
                    bigTiles[data[index]].draw(gc, palette, tiles, xOffset + x * 16, yOffset + y * 16);
                } else {
                    //AD 173
                    //bigTiles[map[index]].draw(gc, palette, tiles, j * 16, i * 16);
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
