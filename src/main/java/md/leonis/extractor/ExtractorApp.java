package md.leonis.extractor;

import javafx.application.Application;
import javafx.stage.Stage;
import md.leonis.extractor.utils.Config;
import md.leonis.extractor.utils.JavaFxUtils;

public class ExtractorApp extends Application {

    @Override
    public void start(Stage primaryStage) throws Exception {
        Config.loadProperties();
        JavaFxUtils.showMainPane(primaryStage);
    }


    public static void main(String[] args) {
        launch(args);
    }
}
