package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import md.leonis.bin.ByteOrder;
import md.leonis.extractor.utils.*;
import md.leonis.ps.editor.model.Level;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import static md.leonis.extractor.utils.Config.dump;


public class MainStageController {

    @FXML
    private void initialize() {

    }

    public void dumpDungeonMapsClick() {
        JavaFxUtils.showPane("MapsPane.fxml");
    }

    public void dumpLevelStatsClick() {
        dump.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        dump.moveTo(0xF8AF);
        List<String> allLevels =
                Stream.of(getLevels(0), getLevels(1), getLevels(2), getLevels(3))
                        .flatMap(Collection::stream).collect(Collectors.toList());
        dump.setByteOrder(ByteOrder.BIG_ENDIAN);

        Path out = Paths.get("src/main/resources/levels.csv");
        try {
            Files.write(out, allLevels, Charset.defaultCharset());
        } catch (IOException e) {
            e.printStackTrace();
        }
        JavaFxUtils.showAlert("Done", "Level dumps successfully dumped!", Alert.AlertType.INFORMATION);
    }

    private List<String> getLevels(int index) {
        return IntStream.range(1, 31).mapToObj(i -> "hero" + index + "-" + i + "=" + (new Level(dump)).toCSV()).collect(Collectors.toList());
    }

    public void dumpAllRleCompressedDataClick() {
        JavaFxUtils.showPane("RlePane.fxml");
    }
}
