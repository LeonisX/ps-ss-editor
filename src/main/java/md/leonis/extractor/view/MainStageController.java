package md.leonis.extractor.view;

import javafx.embed.swing.SwingFXUtils;
import javafx.fxml.FXML;
import javafx.scene.SnapshotParameters;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.control.Button;
import javafx.scene.image.WritableImage;
import javafx.scene.layout.FlowPane;
import md.leonis.bin.Dump;
import md.leonis.extractor.utils.*;

import javax.imageio.ImageIO;
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
    @FXML
    public FlowPane flowPane;

    private Palette palette = new Palette(/*dump.getArray(0xD1E, 32)*/);

    private BigTile[] bigTiles = new BigTile[174]; // 103???

    private Tile[] tiles = new Tile[32 * 32]; // actual 405

    private Map[] maps = new Map[10 * 0xA2/2]; // TODO fix size

    private Dump dump = new Dump(new File("/home/leonis/ps.sms"));

    public MainStageController() throws IOException {
    }

    //TODO отдельные процедуры вывода палитр(), тайлов и прочего.
    @FXML
    private void initialize() {
        canvas.setWidth(16 * 16);
        canvas.setHeight(12 * 16);
        final GraphicsContext gc = canvas.getGraphicsContext2D();
        final GraphicsContext tileGc = tileCanvas.getGraphicsContext2D();
        final GraphicsContext smsPaletteGc = smsPaletteCanvas.getGraphicsContext2D();
        final GraphicsContext paletteGc = paletteCanvas.getGraphicsContext2D();
        initDraw(smsPaletteGc);
        // Caminit
        // palette
        drawPalette(paletteGc);
        // tiles
        Integer[][] bitPlanes = readBitPlanes();
        initializeTiles(bitPlanes);
        drawTiles(tileGc);
        // big tiles
        readBigTiles();
        drawBigTiles(gc);
        // map

        // 60000-600A1 - pointers to maps
        // 0xA2 / 2 = 0x51 (81 map)
        // 9x9

        int maxIndex = 0x60000;
        for (int i = 0; i < 7; i++) {
            int pointersIndex = maxIndex;
            for (int k = 0; k < 0xA2 / 2; k++) {
                dump.moveTo(/*0x6020B*/pointersIndex + k * 2);
                int address = dump.getByte() + (dump.getByte() - 0x80) * 0x100;
                int mapIndex = i * 0xA2 / 2 + k;
                Button button = new Button(Integer.toString(mapIndex));
                //button.setUserData(k);
                button.setOnMouseMoved((event -> {
                    int mapId = Integer.parseInt(((Button) event.getSource()).getText());
                    maps[mapId].draw(gc, palette, tiles, bigTiles, 0, 0);
                }));
                flowPane.getChildren().add(button);

// 6020B // 0x90 == 192
                System.out.println("==================================");
                dump.moveTo(/*0x6020B*/0x60000 + address);
                maps[mapIndex] = new Map(RunLengthEncoding.decode(dump));
                int index = dump.getIndex();
                maxIndex = Math.max(maxIndex, index);
                //maps[mapIndex].setWidth(16);
                //maps[mapIndex].setHeight(maps[mapIndex].getData().length / maps[mapIndex].getWidth());
                System.out.println(String.format("Map #%2s [%2sx%2s] %3s 0x%5S-0x%5S",
                        mapIndex, maps[mapIndex].getWidth(), maps[mapIndex].getHeight(), maps[mapIndex].getData().length, Integer.toHexString(index), Integer.toHexString(dump.getIndex() - 1)));
                //maps[0].draw(gc, palette, tiles, bigTiles, 0 ,0);
            }
        }


        Canvas mapCanvas = new Canvas();
        mapCanvas.setWidth(maps[0].getWidth() * 16);
        mapCanvas.setHeight(maps[0].getHeight() * 16);
        GraphicsContext mapGc = mapCanvas.getGraphicsContext2D();
        for (int i = 0; i < 7; i++) {
            for (int y = 0; y < 9; y++) {
                for (int x = 0; x < 9; x++) {
                    int mapId = i * 0xA2/2 + y * 9 + x;
                    System.out.println(mapId);
                    maps[mapId].draw(mapGc, palette, tiles, bigTiles, x * 16 * 16, y * 12 * 16);
                }
            }
            saveCanvas(mapCanvas, "map" + i + ".png");
        }

        drawBigTiles(gc);
    }

    private void saveCanvas(Canvas canvas, String fileName) {
        WritableImage image = canvas.snapshot(new SnapshotParameters(), null);
        try {
            ImageIO.write(SwingFXUtils.fromFXImage(image, null), "png", new File(fileName));
        } catch (IOException e) {
            // TODO: handle exception here
        }
    }

    private void drawBigTiles(GraphicsContext gc) {
        for (int i = 0, index = 0; i < 11; i++) {
            for (int j = 0; j < 16; j++) {
                //System.out.println(index);
                if (index < bigTiles.length) { //103
                    bigTiles[index++].draw(gc, palette, tiles, j * 16, i * 16);
                }
            }
        }
    }

    private void readBigTiles() {
        dump.moveTo(0x58000);
        for (int i = 0; i < bigTiles.length; i++) {
            System.out.println(String.format("BigTile #%3s 0x%5S-0x%5S", i, Integer.toHexString(dump.getIndex()), Integer.toHexString(dump.getIndex() + 8)));
            bigTiles[i] = new BigTile(dump);
        }
    }

    private void drawTiles(GraphicsContext tileGc) {
        for (int i = 0, index = 0; i < 32; i++) {
            for (int j = 0; j < 32; j++) {
                //System.out.println(index);
                tiles[index++].draw(tileGc, palette, 0, false, false, j * 8, i * 8);
            }
        }
    }

    private void initializeTiles(Integer[][] bitPlanes) {
        for (int i = 0, index = 0; i < bitPlanes[0].length / 8; i++) {
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
    }

    private Integer[][] readBitPlanes() {
        dump.moveTo(0x58570);
        Integer[][] bitPlanes = {
                RunLengthEncoding.decode(dump),
                RunLengthEncoding.decode(dump),
                RunLengthEncoding.decode(dump),
                RunLengthEncoding.decode(dump)
        };
        //TODO проверять размер массивов
        for (int i = 0; i < tiles.length; i++) {
            tiles[i] = new Tile();
        }
        return bitPlanes;
    }

    private void drawPalette(GraphicsContext paletteGc) {
        for (int i = 0; i < 16; i ++) {
            paletteGc.setFill(palette.get(i));
            paletteGc.fillRect(i * 16, 0, 16, 96);
            paletteGc.setFill(palette.get(i + 16));
            paletteGc.fillRect(i * 16, 96, 16, 96);
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

    public void bigTilesMouseMoved() {
        final GraphicsContext gc = canvas.getGraphicsContext2D();
        drawBigTiles(gc);
    }
}
