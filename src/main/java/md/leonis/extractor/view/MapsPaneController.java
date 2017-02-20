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
        }
    }


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
