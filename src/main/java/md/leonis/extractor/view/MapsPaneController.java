package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.FlowPane;
import md.leonis.extractor.utils.Config;
import md.leonis.extractor.utils.JavaFxUtils;

public class MapsPaneController {

    @FXML
    public FlowPane flowPane;
    @FXML
    public TextArea textArea;

    @FXML
    private void initialize() {
        for (int i = 0; i < Config.dungeonMaps.length; i++) {
            Button button = new Button(String.format("%02X", i));
            button.setUserData(i);
            button.setOnMouseMoved(this::onMouseMove);
            flowPane.getChildren().add(button);

            Config.dungeonMaps[i].audit(i);
        }

        //printDungeons();
    }

    /*private void printDungeons() {
        List<String> lines = new ArrayList<>();
        List<DungeonMap> batch = new ArrayList<>();

        int index = 0;
        int batchSize = 4;

        for (DungeonMap dungeonMap : Config.dungeonMaps) {
            if (batch.size() >= batchSize) {
                printBatch(index, batch, lines);
                batch.clear();
                index += batchSize;
            }

            batch.add(dungeonMap);
        }

        if (!batch.isEmpty()) {
            printBatch(index, batch, lines);
        }

        try {
            Files.write(Paths.get("maps/maps.txt"), lines);
        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println("Dungeon maps: " + Config.dungeonMaps.length);
    }

    private void printBatch(int index, List<DungeonMap> batch, List<String> lines) {
        lines.add(index + " - " + (index + batch.size() - 1));

        for (int y = 0; y < 16; y++) {
            StringBuilder sb = new StringBuilder();

            for (DungeonMap dungeonMap : batch) {
                dungeonMap.drawLine(sb, y);
                sb.append("        ");
            }
            lines.add(sb.toString());
        }

        lines.add("");
    }*/

    private void onMouseMove(MouseEvent event) {
        int index = (int) ((Node) event.getSource()).getUserData();
        textArea.setText(Config.dungeonMaps[index].drawAsText2());
    }

    public void bigTilesMouseMoved() {
        /*final GraphicsContext gc = canvas.getGraphicsContext2D();
        drawBigTiles(gc);*/
    }

    public void okButtonClick() {
        JavaFxUtils.showPane("MainStage.fxml");
    }
}
