package md.leonis.extractor.model;


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

    @Override
    public String toString() {
        for (int i = 0; i < 4; i++) {
            System.out.print(String.format("%2S|", Integer.toHexString(tileMaps[i].getTile())));
        }
        return "";
    }

    public void draw(GraphicsContext gc, Palette palette, Tile[] tiles, int x, int y) {
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                TileMap tileMap = tileMaps[i * 2 + j];
                //tileMap.check();
                //System.out.println(index);
                //tileMap.check();
                int paletteOffset = tileMap.isPalette() ? 0x10 : 0;
                //tiles[tileMaps[index].getTile()].toString();
                //if (tileMap.isvFlip()) System.out.println(this + ": " + i * 2 + j);
                tiles[tileMap.getTile()].draw(gc, palette, paletteOffset, tileMap.ishFlip(), tileMap.isvFlip(), x + j * 8, y + i * 8);
            }
        }


    }
}
