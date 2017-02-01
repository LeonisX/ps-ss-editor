package md.leonis.extractor.utils;


import javafx.scene.canvas.GraphicsContext;
import md.leonis.bin.Dump;

public class BigTile {

    private TileMap[] tileMaps = new TileMap[4];

    public BigTile(Dump dump) {
        //dump.moveTo(offset);
        for (int i = 0; i < 4; i++) {
            tileMaps[i] = new TileMap(dump.getByte(), dump.getByte());
        }
    }

    public void draw(GraphicsContext gc, Palette palette, Tile[] tiles, int x, int y) {
        int index = 0;
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                TileMap tileMap = tileMaps[index];
                //System.out.println(index);
                tileMap.check();
                //TODO flip, ...
                int paletteOffset = tileMap.isPalette() ? 0x10 : 0;
                //tiles[tileMaps[index].getTile()].toString();
                tiles[tileMap.getTile()].draw(gc, palette, paletteOffset,x + j * 8, y + i * 8);
                index++;
            }
        }


    }
}
