package md.leonis.ps.editor;

import javafx.application.Application;
import javafx.stage.Stage;
import md.leonis.ps.editor.utils.Config;
import md.leonis.ps.editor.utils.JavaFxUtils;

public class MainApp extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception {
        Config.loadLevels();
        Config.loadProperties();
        Config.loadLanguageTable();
        Config.loadBlankSaveState();
        JavaFxUtils.showMainPane(primaryStage);
    }

    public static void main(String[] args) {
        launch(args);
    }
}
