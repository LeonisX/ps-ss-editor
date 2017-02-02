package md.leonis.extractor.utils;

import md.leonis.bin.Dump;

import static md.leonis.extractor.utils.BitUtils.getBooleanBit;

// http://www.smspower.org/maxim/HowToProgram/Tilemap
//The data takes up a total of 13 bits, stored in two bytes:
//Bit	|15|14|13|    12    |    11   |       10      |        9        |8||7|6|5|4|3|2|1|0|
//Data	| Unused | Priority | Palette | Vertical flip | Horizontal flip |    Tile number   |

// 1    00000001 = extended tile
// 2    00000010 = hFlip
// 4    00000100 = vFlip
// 6    00000110 = hFlip + vFlip
public class TileMap {

    private int tile;
    private int flag;
    private boolean priority;
    private boolean palette;
    private boolean vFlip;
    private boolean hFlip;
    private boolean tileNumber;

    public TileMap(int tile, int flag) {
        this.tile = tile;
        assert(flag < 0x20);
        this.flag = flag;
        tileNumber = getBooleanBit(flag, 0);
        hFlip = getBooleanBit(flag, 1);
        vFlip = getBooleanBit(flag, 2);
        palette = getBooleanBit(flag, 3);
        priority = getBooleanBit(flag, 4);
        //check();
        if (tileNumber) this.tile += 0x100;
    }

    public void check() {
        if (tileNumber || hFlip || vFlip || priority) {
            System.out.println("Strange flag: " + flag);
        }
    }

    public int getTile() {
        return tile;
    }

    public void setTile(int tile) {
        this.tile = tile;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public boolean isPriority() {
        return priority;
    }

    public void setPriority(boolean priority) {
        this.priority = priority;
    }

    public boolean isPalette() {
        return palette;
    }

    public void setPalette(boolean palette) {
        this.palette = palette;
    }

    public boolean isvFlip() {
        return vFlip;
    }

    public void setvFlip(boolean vFlip) {
        this.vFlip = vFlip;
    }

    public boolean ishFlip() {
        return hFlip;
    }

    public void sethFlip(boolean hFlip) {
        this.hFlip = hFlip;
    }

    public boolean isTileNumber() {
        return tileNumber;
    }

    public void setTileNumber(boolean tileNumber) {
        this.tileNumber = tileNumber;
    }
}
