package md.leonis.ps.editor.view;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import md.leonis.ps.editor.model.SaveState;
import md.leonis.ps.editor.utils.Config;

import java.io.File;
import java.io.IOException;
import java.util.*;

public class TrackPaneController {

    //todo auto checkbox
    @FXML
    public TextArea textArea;
    @FXML
    public Button refreshButton;

    @FXML
    private void initialize() {
        TimerTask task = new FileWatcher(Config.saveStateFile);
        Timer timer = new Timer();
        // repeat the check every second
        timer.schedule(task, new Date(), 200);
    }

    public void refreshButtonClick() throws IOException {
        Config.newSaveState = new SaveState(Config.saveStateFile);
        //show diff
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 5; i++) {
            String json = Config.saveState.getSaveGames()[i].toDiff();
            String newJson = Config.newSaveState.getSaveGames()[i].toDiff();
            if (!json.equals(newJson)) {
                sb.append("\n").append("Game #").append(i).append("\n");
                addDiff(sb, json, newJson);
            }
            json = Config.saveState.getSaveGames()[i].getGeo().toDiff();
            newJson = Config.newSaveState.getSaveGames()[i].getGeo().toDiff();
            if (!json.equals(newJson)) {
                sb.append("\n").append("Geo #").append(i).append("\n");
                addDiff(sb, json, newJson);
            }

            for (int j = 0; j < 4; j++) {
                json = Config.saveState.getSaveGames()[i].getHeroes()[j].toDiff();
                newJson = Config.newSaveState.getSaveGames()[i].getHeroes()[j].toDiff();
                if (!json.equals(newJson)) {
                    sb.append("\n").append("Hero #").append(i).append("\n");
                    addDiff(sb, json, newJson);
                }
            }
        }

        textArea.setText(sb.toString());

        Config.saveState = Config.newSaveState;
    }

    private void addDiff(StringBuilder sb, String json, String newJson) {
        List<String> lines1 = Arrays.asList(json.split("\n"));
        List<String> lines2 = Arrays.asList(newJson.split("\n"));
        for (int i = 0; i < lines1.size(); i++) {
            if (!lines1.get(i).equals(lines2.get(i))) {
                String newValue = lines2.get(i).split(":")[1].trim();
                sb.append(lines1.get(i)).append(" -> ").append(newValue).append("\n");
            }
        }
    }

    public class FileWatcher extends TimerTask {
        private long timeStamp;
        private final File file;

        public FileWatcher(File file) {
            this.file = file;
            this.timeStamp = file.lastModified();
        }

        public final void run() {
            long timeStamp = file.lastModified();

            if (this.timeStamp != timeStamp) {
                this.timeStamp = timeStamp;
                try {
                    refreshButtonClick();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
