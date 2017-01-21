package md.leonis.ps.editor.view;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.geometry.Pos;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import md.leonis.ps.editor.utils.Config;

public class SecondaryPaneController {

    @FXML
    public ComboBox languageComboBox;

    @FXML
    public VBox vBox;

    @FXML
    private void initialize() {
        //TODO show data (%, mesetas, roaster, map).
        // if error - show alert

        //System.out.println(Integer.toHexString(3467803));
        for(int i = 0; i < 5; i ++) {
            Button button = new Button(Config.saveState.getSaveGames()[i].getName());
            button.setMinWidth(120);
            String text = "";
            HBox hBox = new HBox(new Label("Slot #" + (i + 1)), button);
            hBox.setSpacing(5);
            hBox.setMinHeight(30);
            hBox.setAlignment(Pos.CENTER_LEFT);
            switch (Config.saveState.getSaveGames()[i].getStatus()) {
                case DELETED:
                    Font font = button.getFont();
                    System.out.println(font);
                    button.setStyle("-fx-font: " + (font.getSize() - 1 ) + " " + font.getFamily() + "; -fx-text-fill: gray");
                    button.setText("deleted. restore");
                    break;
                case ACTIVE:
                    button.setStyle("-fx-font-weight: bold;");
                    break;
                case EMPTY:
                    Font font2 = button.getFont();
                    System.out.println(font2);
                    button.setStyle("-fx-font: " + (font2.getSize() - 1 ) + " " + font2.getFamily() + "; -fx-text-fill: gray");
                    button.setText("create new");
                    break;
            }
            vBox.getChildren().add(hBox);
        }
    }

    public void languageComboBoxChange(ActionEvent actionEvent) {
    }

    public void backButtonClick(ActionEvent actionEvent) {
    }
}
