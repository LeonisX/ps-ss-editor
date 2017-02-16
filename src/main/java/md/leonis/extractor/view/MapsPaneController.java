package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.FlowPane;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.extractor.utils.JavaFxUtils;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

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
            Button button = new Button(String.format("%02X", i));
            button.setUserData(i);
            button.setOnMouseMoved(this::onMouseMove);
            flowPane.getChildren().add(button);
        }


        //TODO not csv, but properties

        //TODO manual edit maps (chests -> traps, bosses)
        //TODO visit hidden areas


        //TODO mark exits!!!
        //TODO таблицы для сундуков, маркеров выходов
        //TODO вероятно в medusas tower (07) скрытая дверь справа. проверить, поправить если что
        //TODO dung 14 - на выходе дверь???

        //TODO нужна раскладка входов-выходов
        //TODO нужна раскладка сундуков
        //TODO нужна раскладка боссов

        //TODO нужна таблица цветов подземелий

        //TODO нужен список подземелий: dungeonIdXY=title
        //TODO список карт dungeonId=color
        //TODO список подземелий: dungeonIdXY=roomId;titleId;level;test commentId

        //TODO в данный момент просто пройтись по подземельям и сделать дампы C300-C316

/*        Path out = Paths.get("src/main/resources/dungeons.csv");
        try {
            Files.write(out,
                    IntStream.range(0, maps.length).mapToObj(i -> maps[i].toProperty(i))
                            .collect(Collectors.toList()), Charset.defaultCharset());
        } catch (IOException e) {
            e.printStackTrace();
        }*/


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
