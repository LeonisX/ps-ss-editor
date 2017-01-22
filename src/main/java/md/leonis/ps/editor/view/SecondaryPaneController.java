package md.leonis.ps.editor.view;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextArea;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import md.leonis.ps.editor.model.SaveGameStatus;
import md.leonis.ps.editor.utils.Config;

public class SecondaryPaneController {

    @FXML
    public ComboBox languageComboBox;

    @FXML
    public VBox vBox;
    @FXML
    public TextArea textArea;
    @FXML
    public Button createButton;
    @FXML
    public Button editButton;
    @FXML
    public Button restoreButton;
    @FXML
    public Button deleteButton;
    @FXML
    public Button eraseButton;
    @FXML
    public Button renameButton;

    @FXML
    private void initialize() {
        //TODO show data (%, mesetas, roaster, map).
        // if error - show alert

        showButtons(SaveGameStatus.DEFAULT);

        createButton.managedProperty().bind(createButton.visibleProperty());
        editButton.managedProperty().bind(editButton.visibleProperty());
        renameButton.managedProperty().bind(renameButton.visibleProperty());
        restoreButton.managedProperty().bind(restoreButton.visibleProperty());
        deleteButton.managedProperty().bind(deleteButton.visibleProperty());
        eraseButton.managedProperty().bind(eraseButton.visibleProperty());

        //System.out.println(Integer.toHexString(3467803));
        for(int i = 0; i < 5; i ++) {
            Button button = new Button(Config.saveState.getSaveGames()[i].getName());
            button.setUserData(i);
            button.setMinWidth(120);
            button.setOnAction(new EventHandler<ActionEvent>() {
                @Override public void handle(ActionEvent e) {
                    //TODO
                    int index = (int) ((Node) e.getSource()).getUserData();
                    textArea.setText(index + "");
                    showButtons(Config.saveState.getSaveGames()[index].getStatus());
                }
            });
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
                    button.setText("deleted");
                    break;
                case ACTIVE:
                    button.setStyle("-fx-font-weight: bold;");
                    break;
                case EMPTY:
                    Font font2 = button.getFont();
                    System.out.println(font2);
                    button.setStyle("-fx-font: " + (font2.getSize() - 1 ) + " " + font2.getFamily() + "; -fx-text-fill: gray");
                    button.setText("empty");
                    break;
            }
            vBox.getChildren().add(hBox);
        }
    }

    private void showButtons(SaveGameStatus status) {
        switch (status) {
            case DELETED:
                createButton.setVisible(false);
                editButton.setVisible(false);
                renameButton.setVisible(false);
                restoreButton.setVisible(true);
                deleteButton.setVisible(false);
                eraseButton.setVisible(true);
                break;
            case ACTIVE:
                createButton.setVisible(false);
                editButton.setVisible(true);
                renameButton.setVisible(true);
                restoreButton.setVisible(false);
                deleteButton.setVisible(true);
                eraseButton.setVisible(true);
                break;
            case EMPTY:
                createButton.setVisible(true);
                editButton.setVisible(false);
                renameButton.setVisible(false);
                restoreButton.setVisible(false);
                deleteButton.setVisible(false);
                eraseButton.setVisible(false);
                break;
            case DEFAULT:
                createButton.setVisible(false);
                editButton.setVisible(false);
                renameButton.setVisible(false);
                restoreButton.setVisible(false);
                deleteButton.setVisible(false);
                eraseButton.setVisible(false);
        }
    }

    @FXML
    public void languageComboBoxChange() {
    }

    @FXML
    public void backButtonClick() {
    }

    @FXML
    public void createClick() {
    }

    @FXML
    public void editClick() {
    }

    @FXML
    public void restoreClick() {
    }

    @FXML
    public void deleteClick() {
    }

    @FXML
    public void eraseClick() {
    }

    @FXML
    public void renameClick() {
    }
}
