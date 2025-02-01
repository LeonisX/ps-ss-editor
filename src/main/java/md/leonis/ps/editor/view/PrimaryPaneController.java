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
    private void initialize() {
    }

    public void openButtonClick() {
        FileChooser fileChooser = new FileChooser();
        fileChooser.setTitle("Open Resource File");
        //fileChooser.setInitialDirectory(new File(workDir));
        fileChooser.getExtensionFilters().addAll(
                new FileChooser.ExtensionFilter("All saves", "*.sav", "*.ssm"),
                new FileChooser.ExtensionFilter("All files", "*.*")

        );
        Config.saveStateFile = fileChooser.showOpenDialog(openButton.getScene().getWindow());

        if (Config.saveStateFile != null && Config.saveStateFile.exists()) {
            try {
                Config.saveState = new SaveState(Config.saveStateFile);
                JavaFxUtils.showPane("SecondaryPane.fxml");
            } catch (Exception e) {
                JavaFxUtils.showAlert("Read Save State Error", e.getMessage(), Alert.AlertType.ERROR);
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
