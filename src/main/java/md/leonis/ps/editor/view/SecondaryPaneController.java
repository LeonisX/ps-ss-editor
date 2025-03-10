package md.leonis.ps.editor.view;

import javafx.fxml.FXML;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.control.*;
import javafx.scene.input.KeyEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import md.leonis.ps.editor.model.SaveGame;
import md.leonis.ps.editor.model.SaveGameStatus;
import md.leonis.ps.editor.model.enums.EnvironmentType;
import md.leonis.ps.editor.model.enums.SaveType;
import md.leonis.ps.editor.utils.Config;
import md.leonis.ps.editor.utils.JavaFxUtils;

import java.util.Optional;

import static md.leonis.ps.editor.model.SaveState.SAVE_GAME_STATUS_OFFSET;
import static md.leonis.ps.editor.utils.Config.*;

//TODO после чтения проверять равенство x, y ,x2, y2

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

        vBox.getChildren().clear();

        showButtons(SaveGameStatus.DEFAULT);

        createButton.managedProperty().bind(createButton.visibleProperty());
        editButton.managedProperty().bind(editButton.visibleProperty());
        renameButton.managedProperty().bind(renameButton.visibleProperty());
        restoreButton.managedProperty().bind(restoreButton.visibleProperty());
        deleteButton.managedProperty().bind(deleteButton.visibleProperty());
        eraseButton.managedProperty().bind(eraseButton.visibleProperty());

        if (saveState.getSaveType() == SaveType.RAM) {
            addButton(-1, saveState.getRamGame());
        }

        for (int i = 0; i < 5; i++) {
            addButton(i, saveState.getSaveGames()[i]);
        }
    }

    private void addButton(int index, SaveGame saveGame) {
        Button button = new Button(saveGame.getName());
        button.setUserData(index);
        button.setMinWidth(120);
        button.setOnAction(e -> {
            //TODO %%%%%
            saveSlotIndex = (int) ((Node) e.getSource()).getUserData();
            currentSaveGame = saveGame;
            String text = "";
            text += saveGame.getName() + " (" + saveGame.getStatus() + ")\n";
            text += "Teammates: " + (saveGame.getCompanionsCount() + 1) + "\n";
            text += "Level: " + saveGame.getHeroes()[0].getLevel() + "\n";
            text += "Mesetas: " + saveGame.getMesetas() + "\n";
            text += "Items: " + saveGame.getItemsCount() + "\n";
            if (saveGame.getGeo().getType().equals(EnvironmentType.OUTDOOR)) {
                text += "Map Id: 0x" + String.format("%02X", saveGame.getGeo().getMapLayer()) + " ";
                text += String.format("%02X", saveGame.getGeo().getMapId()) + "\n";
            } else {
                text += "Dungeon Id: 0x" + Integer.toHexString(saveGame.getGeo().getDungeon()) + "\n";
                text += "Room Id: 0x" + Integer.toHexString(saveGame.getGeo().getRoom()) + "\n";
            }
            textArea.setText(text);
            showButtons(saveGame.getStatus());
        });
        String label = (index < 0) ? "Ram" : "Slot #" + (index + 1);
        HBox hBox = new HBox(new Label(label), button);
        hBox.setSpacing(5);
        hBox.setMinHeight(30);
        hBox.setAlignment(Pos.CENTER_LEFT);
        switch (saveGame.getStatus()) {
            case DELETED:
                Font font = button.getFont();
                //System.out.println(font);
                button.setStyle("-fx-font: " + (font.getSize() - 1) + " " + font.getFamily() + "; -fx-text-fill: rgb(128,128,128)");
                button.setText("deleted");
                break;
            case ACTIVE, RAM:
                button.setStyle("-fx-font-weight: bold;");
                break;
            case EMPTY:
                Font font2 = button.getFont();
                //System.out.println(font2);
                button.setStyle("-fx-font: " + (font2.getSize() - 1) + " " + font2.getFamily() + "; -fx-text-fill: rgb(128,128,128)");
                button.setText("empty");
                break;
        }
        vBox.getChildren().add(hBox);
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
            case RAM:
                createButton.setVisible(false);
                editButton.setVisible(true);
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
        JavaFxUtils.showPane("PrimaryPane.fxml");
    }

    @FXML
    public void createClick() {
        saveState.getSaveGames()[saveSlotIndex] = blankSaveState.getSaveGames()[0];
        saveState.getRomData().setBoolean(SAVE_GAME_STATUS_OFFSET + saveSlotIndex, true);
        saveState.writeName(saveSlotIndex, blankSaveState.getSaveGames()[0].getName());
        saveState.updateDump();
        saveState.save();
        saveState.updateObject();
        initialize();
    }

    @FXML
    public void editClick() {
        JavaFxUtils.showPane("SaveGamePane.fxml");
    }

    @FXML
    public void restoreClick() {
        showTextInputDialog("Restore save slot",
                "Enter title for save slot",
                "Up to 5 symbols:",
                ""
        ).ifPresent(name -> {
            //write name, reread ROM
            saveState.writeName(saveSlotIndex, name.toUpperCase());
            saveState.getRomData().setBoolean(SAVE_GAME_STATUS_OFFSET + saveSlotIndex, true);
            saveState.save();
            saveState.updateObject();
            initialize();
        });
    }

    @FXML
    public void deleteClick() {
        //erase name, reread ROM
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Confirmation Dialog");
        alert.setHeaderText("Delete " + saveState.getSaveGames()[saveSlotIndex].getName() + " slot?");
        //alert.setContentText();

        if (alert.showAndWait().get() == ButtonType.OK) {
            saveState.eraseName(saveSlotIndex);
            saveState.getRomData().setBoolean(SAVE_GAME_STATUS_OFFSET + saveSlotIndex, false);
            saveState.save();
            saveState.updateObject();
            initialize();
        }
    }

    @FXML
    public void eraseClick() {
        //clear name, delete, fill data with zeroes
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setTitle("Confirmation Dialog");
        alert.setHeaderText("Completely erase " + saveState.getSaveGames()[saveSlotIndex].getName() + " slot?");
        //alert.setContentText();

        if (alert.showAndWait().get() == ButtonType.OK) {
            saveState.writeName(saveSlotIndex, "");
            saveState.getRomData().setBoolean(SAVE_GAME_STATUS_OFFSET + saveSlotIndex, false);
            saveState.clearArea(saveSlotIndex);
            saveState.save();
            saveState.updateObject();
            initialize();
        }
    }

    @FXML
    public void renameClick() {
        showTextInputDialog("Rename save slot",
                "Enter new save slot title",
                "Up to 5 symbols:",
                saveState.getSaveGames()[saveSlotIndex].getName()
        ).ifPresent(name -> {
            //write name, reread ROM, change flag (for save)
            saveState.writeName(saveSlotIndex, name.toUpperCase());
            saveState.save();
            saveState.updateObject();
            initialize();
        });
    }

    private Optional<String> showTextInputDialog(String title, String header, String content, String initialText) {
        TextInputDialog dialog = new TextInputDialog(initialText);
        dialog.setTitle(title);
        dialog.setHeaderText(header);
        dialog.setContentText(content);
        dialog.getEditor().setPrefColumnCount(5);
        dialog.getEditor().addEventFilter(KeyEvent.KEY_TYPED, e -> {
                    String text = e.getCharacter().toUpperCase();
                    boolean result = false;
                    for (int i = 0; i < text.length(); i++) {
                        if (Config.getKeyByValue(text.charAt(i)).isEmpty()) result = true;
                    }
                    if (result || ((TextField) e.getSource()).getText().length() >= 5) {
                        e.consume();
                    }
                }
        );
        return dialog.showAndWait();
    }
}
