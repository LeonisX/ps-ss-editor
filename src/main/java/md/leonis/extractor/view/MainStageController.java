package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import md.leonis.bin.Dump;
import md.leonis.extractor.utils.BigTile;
import md.leonis.extractor.utils.Palette;
import md.leonis.extractor.utils.RunLengthEncoding;
import md.leonis.extractor.utils.Tile;

import java.io.File;
import java.io.IOException;

import static md.leonis.extractor.utils.BitUtils.getBit;

public class MainStageController {

    @FXML
    public Canvas canvas;
    @FXML
    public Canvas tileCanvas;
    @FXML
    public Canvas smsPaletteCanvas;
    @FXML
    public Canvas paletteCanvas;

    Palette palette;

    BigTile[] bigTiles = new BigTile[103];

    Dump dump = new Dump(new File("/home/leonis/ps.sms"));

    public MainStageController() throws IOException {
    }

    //TODO отдельные процедуры вывода палитр(), тайлов и прочего.
    @FXML
    private void initialize() {
        final GraphicsContext gc = canvas.getGraphicsContext2D();
        final GraphicsContext tileGc = tileCanvas.getGraphicsContext2D();
        final GraphicsContext smsPaletteGc = smsPaletteCanvas.getGraphicsContext2D();
        final GraphicsContext paletteGc = paletteCanvas.getGraphicsContext2D();
        initDraw(smsPaletteGc);
        // Caminit
        // palette
        palette = new Palette(/*dump.getArray(0xD1E, 32)*/);
        for (int i = 0; i < 16; i ++) {
            paletteGc.setFill(palette.get(i));
            paletteGc.fillRect(i * 16, 0, 16, 96);
            paletteGc.setFill(palette.get(i + 16));
            paletteGc.fillRect(i * 16, 96, 16, 96);
        }
        // tiles
        dump.moveTo(0x58570);
        Integer[][] bitPlanes = {
                RunLengthEncoding.decode(dump),
                RunLengthEncoding.decode(dump),
                RunLengthEncoding.decode(dump),
                RunLengthEncoding.decode(dump)
        };
        //TODO проверять размер массивов
        Tile[] tiles = new Tile[32 * 32]; // actual 405
        for (int i = 0; i < tiles.length; i++) {
            tiles[i] = new Tile();
        }
        int index = 0;
        for (int i = 0; i < bitPlanes[0].length / 8; i++) {
            for (int j = 0; j < 8; j++) {
                for (int k = 0; k < 8; k++) {
                    tiles[i].getData()[j * 8 + k] = (getBit(bitPlanes[3][index], 7 - k) << 3)
                            + (getBit(bitPlanes[2][index], 7 - k) << 2)
                            + (getBit(bitPlanes[1][index], 7 - k) << 1)
                            + getBit(bitPlanes[0][index], 7 - k);

                }
                index ++;
            }
        }
        index = 0;
        for (int i = 0; i < 32; i++) {
            for (int j = 0; j < 32; j++) {
                //System.out.println(index);
                tiles[index++].draw(tileGc, palette, 0, j * 8, i * 8);
            }
        }
        // big tiles
        dump.moveTo(0x58000);
        for (int i = 0; i < bigTiles.length; i++) {
            bigTiles[i] = new BigTile(dump);
        }
        index = 0;
        for (int i = 0; i < 7; i++) {
            for (int j = 0; j < 16; j++) {
                //System.out.println(index);
                if (index < bigTiles.length) { //103
                    bigTiles[index++].draw(gc, palette, tiles, j * 16, i * 16);
                }
            }
        }
        // map

        dump.moveTo(/*0x6020B*/0x6016E);
        for (int k = 0; k < 25; k++) {
// 6020B // 0x90 == 192
            System.out.println("==================================");

            Integer[] map = RunLengthEncoding.decode(dump);
            //System.out.println(map.length);
            //int mapHeight = 12;
            int mapWidth = 16;
            int mapHeight = map.length / mapWidth;
            //System.out.println(map.length);
            //System.out.println(mapWidth);
            //TODO рисовать фон 02
            for (int i = 0; i < mapHeight; i++) {
                for (int j = 0; j < mapWidth; j++) {
                    bigTiles[91].draw(gc, palette, tiles, j * 16, i * 16);
                }
            }
            index = 0;
            for (int i = 0; i < mapHeight; i++) {
                int xOffset = 0;
                for (int j = 0; j < mapWidth; j++) {
                    //System.out.println(index);
                    if ((map[index] < bigTiles.length)) {
                        bigTiles[map[index]].draw(gc, palette, tiles, j * 16 + xOffset, i * 16);
                    } else {
                        //AD 173
                        //bigTiles[map[index]].draw(gc, palette, tiles, j * 16, i * 16);
                        System.out.println(index + ": " + map[index]);
                        xOffset = 1 * 0;
                    }
                    index++;
                }
            }
            try {
                Thread.sleep(0);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    private void initDraw(GraphicsContext gc){
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                int index = i * 8 + j;
                gc.setFill(Palette.smsPalette[index]);
                gc.fillRect(j * 32, i * 24, j * 32 + 32, i * 24 + 24);
                //gc.setStroke(Palette.smsPalette[index]);
                gc.strokeText(String.format("%02X", index), j * 32 + 8, i * 24 + 16);
            }
        }
    }
}
