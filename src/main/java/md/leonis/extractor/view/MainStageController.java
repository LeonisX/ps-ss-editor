package md.leonis.extractor.view;

import javafx.embed.swing.SwingFXUtils;
import javafx.fxml.FXML;
import javafx.scene.SnapshotParameters;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import javafx.scene.image.WritableImage;
import javafx.scene.layout.FlowPane;
import md.leonis.extractor.model.*;
import md.leonis.extractor.utils.*;

import javax.imageio.ImageIO;
import java.io.File;
import java.io.IOException;

import static md.leonis.extractor.model.Palette.*;
import static md.leonis.extractor.utils.BitUtils.getBit;
import static md.leonis.extractor.utils.Config.dump;

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

    /*private Palette palette = new Palette(*//**//*dump.getArray(0xD1E, 32)*//**//*);

    private BigTile[] bigTiles = new BigTile[300]; // 174

    private Tile[] tiles = new Tile[32 * 32]; // actual 405

    private MapPiece[] mapPieces = new MapPiece[20 * 0xA2/2]; // TODO fix size*/

    private Map[] maps;

    private BigTile[] localityBigTiles;
    private BigTile[] planetBigTiles;

    private Tile[] localityTiles;
    private Tile[] planetTiles;

    private MapPiece[][] mapPieces2; // Palma, Motavia
    private MapPiece[][] mapPieces1; // Dezoris
    private MapPiece[][] mapPieces7; // 7 localities

    // big tiles // 58000 // 0x74000

    public MainStageController() throws IOException {
    }

    @FXML
    private void initialize() {
        canvas.setWidth(16 * 16);
        canvas.setHeight(16 * 16);
        final GraphicsContext gc = canvas.getGraphicsContext2D();
        final GraphicsContext tileGc = tileCanvas.getGraphicsContext2D();
        final GraphicsContext smsPaletteGc = smsPaletteCanvas.getGraphicsContext2D();
        final GraphicsContext paletteGc = paletteCanvas.getGraphicsContext2D();
        initDraw(smsPaletteGc);
        // Caminit
        // palette
        //drawPalette(paletteGc);
        // tiles
        //readTiles(0x58570);
        //drawTiles(tileGc);
        // big tiles
        //readBigTiles();
        //drawBigTiles(gc);
        // map

        // 60000-600A1 - pointers to mapPieces
        // 0xA2 / 2 = 0x51 (81 map)
        // 9x9

        System.out.println("=== Locality Big Tiles");
        localityBigTiles = readBigTiles(0x58000, 174);
        System.out.println("=== Planet Big Tiles");
        planetBigTiles = readBigTiles(0x74000, 247);

        System.out.println("=== Locality Tiles");
        localityTiles = readTiles(0x58570);
        System.out.println("=== Planet Tiles");
        planetTiles = readTiles(0x747B8);

        drawTiles(tileGc, planetTiles, palmaPalette);
        drawBigTiles(gc, planetTiles, palmaPalette, planetBigTiles);

        System.out.println("=== Map Pieces (2)");
        mapPieces2 = readMapPieces(0x34000, 2);
        System.out.println("=== Map Pieces (1)");
        mapPieces1 = readMapPieces(0x38000, 1);
        System.out.println("=== Map Pieces (7)");
        mapPieces7 = readMapPieces(0x60000, 7);

        maps = new Map[] {
                new Map("Camineet, Parolit, Spaceport", camineetPalette,
                        localityTiles, localityBigTiles, mapPieces7[0]),
                new Map("Gothic, Eppi, Loar, Abion, Bortevo", gothicPalette,
                        localityTiles, localityBigTiles, mapPieces7[1]),
                new Map("Drasgow, Scion", scionPalette,
                        localityTiles, localityBigTiles, mapPieces7[2]),
                new Map("Paseo, Uzo, Spaceport, Casba, Sopia", paseoPalette,
                        localityTiles, localityBigTiles, mapPieces7[3]),
                new Map("Skure, Twintown (Surface)", skureSurfacePalette,
                        localityTiles, localityBigTiles, mapPieces7[4]),
                new Map("Skure, Twintown", skurePalette,
                        localityTiles, localityBigTiles, mapPieces7[5]),
                new Map("Air Castle", airCastlePalette,
                        localityTiles, localityBigTiles, mapPieces7[6]),

                new Map("Palma", palmaPalette,
                        planetTiles, planetBigTiles, mapPieces2[0]),
                new Map("Motavia", motaviaPalette,
                        planetTiles, planetBigTiles, mapPieces2[1]),

                new Map("Dezoris", dezorisPalette,
                        planetTiles, planetBigTiles, mapPieces1[0])
        };



/*
        //TODO вырезать инициализацию, оставиь кнопки
        //int maxIndex = 0x60000;
        //int maxIndex = 0x34000;
        int maxIndex = 0x38000;
        for (int i = 0; i < 7; i++) {
            int pointersIndex = maxIndex;
            for (int k = 0; k < 0xA2 / 2; k++) {
                dump.moveTo(*//*0x6020B*//*pointersIndex + k * 2);
                System.out.println(String.format("MapPiece pointers #%1s 0x%5S-0x%5S",
                        i, Integer.toHexString(dump.getIndex()), Integer.toHexString(dump.getIndex() + 2 - 1)));

                int address = dump.getByte() + (dump.getByte() - 0x80) * 0x100;
                int mapIndex = i * 0xA2 / 2 + k;
                Button button = new Button(Integer.toString(mapIndex));
                //button.setUserData(k);
                button.setOnMouseMoved((event -> {
                    int mapId = Integer.parseInt(((Button) event.getSource()).getText());
                    mapPieces[mapId].draw(gc, palette, tiles, bigTiles, 0, 0);
                }));
                flowPane.getChildren().add(button);

// 6020B // 0x90 == 192
                System.out.println("==================================");
                dump.moveTo(*//*0x6020B*//*0x38000 + address); // 60000, 34000
                System.out.print(String.format("MapPieces #%1s 0x%5S-", i, Integer.toHexString(dump.getIndex())));
                mapPieces[mapIndex] = new MapPiece(RunLengthEncoding.decode(dump));
                int index = dump.getIndex();
                maxIndex = Math.max(maxIndex, index);
                //mapPieces[mapIndex].setWidth(16);
                //mapPieces[mapIndex].setHeight(mapPieces[mapIndex].getData().length / mapPieces[mapIndex].getWidth());
                System.out.println(String.format("0x%5S", Integer.toHexString(dump.getIndex() - 1)));
                System.out.println(String.format("MapPiece #%2s [%2sx%2s] %3s 0x%5S-0x%5S",
                        mapIndex, mapPieces[mapIndex].getWidth(), mapPieces[mapIndex].getHeight(), mapPieces[mapIndex].getData().length, Integer.toHexString(index), Integer.toHexString(dump.getIndex() - 1)));
                //mapPieces[0].draw(gc, palette, tiles, bigTiles, 0 ,0);
            }
        }*/



        Canvas mapCanvas = new Canvas();
        mapCanvas.setWidth(9 * 16 * 16);
        mapCanvas.setHeight(9 * 16 * 12);
        GraphicsContext mapGc = mapCanvas.getGraphicsContext2D();
        for (int i = 0; i < maps.length; i++) {
            for (int y = 0; y < 9; y++) {
                for (int x = 0; x < 9; x++) {
                    int mapId = y * 9 + x;
                    System.out.println(mapId);
                    maps[i].getMapPieces()[mapId].draw(mapGc, maps[i].getPalette(), maps[i].getTiles(), maps[i].getBigTiles(), x * 16 * 16, y * 12 * 16);
                }
            }
            saveCanvas(mapCanvas, maps[i].getName() + ".png");
        }

    }


    private MapPiece[][] readMapPieces(int start, int count) {
        MapPiece[][] mapPieces = new MapPiece[count][/*20 * */0xA2 / 2];
        //int maxIndex = 0x60000;
        //int maxIndex = 0x34000;
        int maxIndex = start; //0x38000;
        for (int i = 0; i < count; i++) {
            int pointersIndex = maxIndex;
            for (int k = 0; k < 0xA2 / 2; k++) {
                dump.moveTo(/*0x6020B*/pointersIndex + k * 2);
                System.out.println(String.format("MapPiece pointers #%1s 0x%5S-0x%5S",
                        i, Integer.toHexString(dump.getIndex()), Integer.toHexString(dump.getIndex() + 2 - 1)));

                int address = dump.getByte() + (dump.getByte() - 0x80) * 0x100;
                int mapIndex = /*i * 0xA2 / 2 + */k;

// 6020B // 0x90 == 192
                System.out.println("==================================");
                dump.moveTo(/*0x6020B*/start + address); // 60000, 34000, 38000
                System.out.print(String.format("MapPieces #%1s 0x%5S-", i, Integer.toHexString(dump.getIndex())));
                mapPieces[i][mapIndex] = new MapPiece(RunLengthEncoding.decode(dump));
                int index = dump.getIndex();
                maxIndex = Math.max(maxIndex, index);
                System.out.println(String.format("0x%5S", Integer.toHexString(dump.getIndex() - 1)));
                System.out.println(String.format("MapPiece #%2s [%2sx%2s] %3s 0x%5S-0x%5S",
                        mapIndex, mapPieces[i][mapIndex].getWidth(), mapPieces[i][mapIndex].getHeight(), mapPieces[i][mapIndex].getData().length, Integer.toHexString(index), Integer.toHexString(dump.getIndex() - 1)));
            }
        }
        return mapPieces;
    }


    private BigTile[] readBigTiles(int start, int bigTilesCount) {
        //int bigTilesCount = Math.toIntExact(Math.round((finish * 1.0 - start) / 8));
        BigTile[] bigTiles = new BigTile[bigTilesCount];
        dump.moveTo(start); // 58000 // 0x74000
        for (int i = 0; i < bigTilesCount; i++) {
            System.out.println(String.format("BigTile #%3s 0x%5S-0x%5S", i, Integer.toHexString(dump.getIndex()), Integer.toHexString(dump.getIndex() + 8)));
            bigTiles[i] = new BigTile(dump);
        }
        return bigTiles;
    }


    private Tile[] readTiles(int start) {
        dump.moveTo(start); //58570 //0x747B8
        Integer[][] bitPlanes = readBitPlanes();
        return initializeTiles(bitPlanes);
    }

    private Tile[] initializeTiles(Integer[][] bitPlanes) {
        Tile[] tiles = new Tile[32 * 32]; // actual 405
        for (int i = 0; i < tiles.length; i++) {
            tiles[i] = new Tile();
        }
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
        return tiles;
    }

    private Integer[][] readBitPlanes() {
        Integer[][] bitPlanes = new Integer[4][0];
        for (int i = 0; i < 4; i++) {
            System.out.print(String.format("BitPlane #%1s 0x%5S-", i, Integer.toHexString(dump.getIndex())));
            bitPlanes[i] = RunLengthEncoding.decode(dump);
            System.out.println(String.format("0x%5S", Integer.toHexString(dump.getIndex() - 1)));
        }
        return bitPlanes;
    }




    private void saveCanvas(Canvas canvas, String fileName) {
        WritableImage image = canvas.snapshot(new SnapshotParameters(), null);
        try {
            ImageIO.write(SwingFXUtils.fromFXImage(image, null), "png", new File(fileName));
        } catch (IOException e) {
            // TODO: handle exception here
        }
    }

    private void drawBigTiles(GraphicsContext gc, Tile[] tiles, Palette palette, BigTile[] bigTiles) {
        for (int i = 0, index = 0; i < 30; i++) {
            for (int j = 0; j < 16; j++) {
                //System.out.println(index);
                if (index < bigTiles.length) { //103
                    bigTiles[index++].draw(gc, palette, tiles, j * 16, i * 16);
                }
            }
        }
    }



    private void drawTiles(GraphicsContext tileGc, Tile[] tiles, Palette palette) {
        for (int i = 0, index = 0; i < 32; i++) {
            for (int j = 0; j < 32; j++) {
                //System.out.println(index);
                tiles[index++].draw(tileGc, palette, 0, false, false, j * 8, i * 8);
            }
        }
    }
/*
    private void drawPalette(GraphicsContext paletteGc) {
        for (int i = 0; i < 16; i ++) {
            paletteGc.setFill(palette.get(i));
            paletteGc.fillRect(i * 16, 0, 16, 96);
            paletteGc.setFill(palette.get(i + 16));
            paletteGc.fillRect(i * 16, 96, 16, 96);
        }
    }*/

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
        /*final GraphicsContext gc = canvas.getGraphicsContext2D();
        drawBigTiles(gc);*/
    }
}
