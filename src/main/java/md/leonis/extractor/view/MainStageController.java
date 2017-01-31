package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.canvas.Canvas;
import javafx.scene.canvas.GraphicsContext;
import md.leonis.bin.Dump;
import md.leonis.extractor.utils.Palette;
import md.leonis.extractor.utils.RunLengthEncoding;

import java.io.File;
import java.io.IOException;

public class MainStageController {

    @FXML
    public Canvas canvas;

    Palette palette;

    Dump dump = new Dump(new File("/home/leonis/ps.sms"));

    public MainStageController() throws IOException {
    }

    //TODO отдельные процедуры вывода палитр(), тайлов и прочего.
    @FXML
    private void initialize() {
        final GraphicsContext graphicsContext = canvas.getGraphicsContext2D();
        initDraw(graphicsContext);
        // Caminit
        // palette
        palette = new Palette(/*dump.getArray(0xD1E, 32)*/);
        for (int i = 0; i < 16; i ++) {
            graphicsContext.setFill(palette.get(i));
            graphicsContext.fillRect(i * 8, 0, 8, 32);
            graphicsContext.setFill(palette.get(i + 16));
            graphicsContext.fillRect(i * 8, 32, 8, 32);
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
        int[] r = new int[0x80000];
        int index = 0;
        for (int i = 0; i < 3240; i++) {
            for (int j = 0; j < 8; j++) {
                r[index++] = ((bitPlanes[3][i] >> (7 - j) & 1) << 3)
                        + ((bitPlanes[2][i] >> (7 - j) & 1) << 2)
                        + ((bitPlanes[1][i] >> (7 - j) & 1) << 1)
                        + (bitPlanes[0][i] >> (7 - j) & 1);
            }
        }
        index = 0;
        for (int i = 0; i < 32; i++) {
            for (int j = 0; j < 32; j++) {
                for (int k = 0; k < 8; k++) {
                    for (int l = 0; l < 8; l++) {
                        graphicsContext.setFill(palette.get(r[index++]));
                        //graphicsContext.fillRect(l + j * 8, k + i * 8, 1, 1);
                    }
                }
            }
        }
    }

    private void initDraw(GraphicsContext gc){
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 8; j++) {
                gc.setFill(Palette.smsPalette[i * 8 + j]);
                gc.fillRect(i * 32, j * 24, i * 32 + 32, j * 24 + 24);
            }
        }
    }
}
