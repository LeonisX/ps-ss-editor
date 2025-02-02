package md.leonis.ps.editor.view;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.stage.FileChooser;
import md.leonis.ps.editor.model.SaveState;
import md.leonis.ps.editor.utils.Config;
import md.leonis.ps.editor.utils.JavaFxUtils;
import md.leonis.ps.editor.utils.ValidationException;

public class PrimaryPaneController {

    @FXML
    public Button openButton;
    @FXML
    public Button trackButton;

    @FXML
    private void initialize() {
    }

    public void openButtonClick() {
        loadSaveStateAndOpenPane("SecondaryPane.fxml");
    }

    public void trackButtonClick() {
        loadSaveStateAndOpenPane("TrackPane.fxml");
    }

    private void loadSaveStateAndOpenPane(String pane) {
        FileChooser fileChooser = new FileChooser();
        fileChooser.setTitle("Open Resource File");
        if (Config.saveStateFile != null) {
            fileChooser.setInitialDirectory(Config.saveStateFile.getParentFile());
        }
        fileChooser.getExtensionFilters().addAll(
                new FileChooser.ExtensionFilter("All saves", "*.sav", "*.ssm", "*.ss0"),
                new FileChooser.ExtensionFilter("All files", "*.*")

        );
        Config.saveStateFile = fileChooser.showOpenDialog(openButton.getScene().getWindow());

        if (Config.saveStateFile != null && Config.saveStateFile.exists()) {
            try {
                Config.fusionSave = Config.saveStateFile.toString().endsWith("ss0");
                Config.saveState = new SaveState(Config.saveStateFile);
                JavaFxUtils.showPane(pane);
            } catch (Exception e) {
                JavaFxUtils.showAlert("Save State Read Error", e.getMessage(), Alert.AlertType.ERROR);
                if (! (e instanceof ValidationException)) {
                    e.printStackTrace();
                }
            }
        }
    }

    //TODO create (for concrete emulator),  convert
    public void closeButtonClick() {
        Platform.exit();
    }
}
