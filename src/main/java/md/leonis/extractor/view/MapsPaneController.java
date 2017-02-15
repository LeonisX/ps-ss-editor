package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.FlowPane;
import md.leonis.bin.ByteOrder;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.extractor.utils.JavaFxUtils;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static md.leonis.extractor.utils.Config.dump;

public class MapsPaneController {

    @FXML
    public FlowPane flowPane;
    @FXML
    public TextArea textArea;

    private DungeonMap[] maps = new DungeonMap[0x3D]; //3D

    @FXML
    private void initialize() {

        dump.moveTo(0x3DF6E);
        for (int i = 0; i < maps.length; i++) {
            System.out.println(Integer.toHexString(i));
            maps[i] = new DungeonMap(dump);

            //TODO buttons
            Button button = new Button(String.format("%02X", i));
            button.setUserData(i);
            button.setOnMouseMoved(event -> onMouseMove(event));
            flowPane.getChildren().add(button);
        }
        /*
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
*/

    }


    private void onMouseMove(MouseEvent event) {
        int index = (int) ((Node) event.getSource()).getUserData();
        textArea.setText(maps[index].drawAsText());
    }

    public void bigTilesMouseMoved() {
        /*final GraphicsContext gc = canvas.getGraphicsContext2D();
        drawBigTiles(gc);*/
    }

    public void okButtonClick() {
        JavaFxUtils.showPane("MainStage.fxml");
    }
}
