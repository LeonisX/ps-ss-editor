package md.leonis.ps.editor.view;

import javafx.beans.property.StringProperty;
import javafx.fxml.FXML;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import md.leonis.ps.editor.model.SaveGame;
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

    private int saveSlotIndex;

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

        for(int i = 0; i < 5; i ++) {
            Button button = new Button(Config.saveState.getSaveGames()[i].getName());
            button.setUserData(i);
            button.setMinWidth(120);
            button.setOnAction(e -> {
                //TODO %%%%%
                saveSlotIndex = (int) ((Node) e.getSource()).getUserData();
                SaveGame saveGame = Config.saveState.getSaveGames()[saveSlotIndex];
                String text = "";
                text += saveGame.getName() + " (" + saveGame.getStatus() + ")\n";
                text += "Teammates: " + (saveGame.getCompanionsCount() + 1) + "\n";
                text += "Level: " + saveGame.getHeroes()[0].getLevel() + "\n";
                text += "Mesetas: " + saveGame.getMesetas() + "\n";
                text += "Items: " + saveGame.getItemsCount() + "\n";
                if (saveGame.getType() == 0x0D) {
                    text += "Map Id: 0x" + Integer.toHexString(saveGame.getMapId()) + "\n";
                } else {
                    text += "Dungeon Id: 0x" + Integer.toHexString(saveGame.getDungeonId()) + "\n";
                    text += "Room Id: 0x" + Integer.toHexString(saveGame.getRoomId()) + "\n";
                }
                textArea.setText(text);
                showButtons(Config.saveState.getSaveGames()[saveSlotIndex].getStatus());
            });
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
        // TODO ask name, write name, reread ROM, change flag (for save)
    }

    @FXML
    public void deleteClick() {
        //TODO erase name, number, reread ROM, change flag (for save)
    }

    @FXML
    public void eraseClick() {
        //TODO use delete (but with 0x10), fill data with zeroes
    }

    @FXML
    public void renameClick() {
        //ask for new name
        TextInputDialog dialog = new TextInputDialog(Config.saveState.getSaveGames()[saveSlotIndex].getName());
        dialog.setTitle("Rename save slot");
        dialog.setHeaderText("Enter new save slot title");
        dialog.setContentText("Up to 5 symbols:");
        dialog.getEditor().setPrefColumnCount(5);
        dialog.getEditor().textProperty().addListener(
                (observable, oldValue, newValue) -> {
                    String correctedNewValue = newValue.toUpperCase();
                    //TODO characters filter (table), length restriction
                    if (false || newValue.length() > 5) {
                        ((StringProperty) observable).setValue(oldValue);
                    } else {
                        // тут можно менять регистр
                        ((StringProperty) observable).setValue(correctedNewValue);
                    }
                }
        );
        dialog.showAndWait().ifPresent(name -> {
            //TODO ask for new name, write name, reread ROM, change flag (for save)
            System.out.println("Your name: " + name);
        });

    }
}
