package md.leonis.ps.editor.view;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextArea;
import md.leonis.ps.editor.model.Geo;
import md.leonis.ps.editor.model.Hero;
import md.leonis.ps.editor.model.SaveGame;
import md.leonis.ps.editor.model.SaveState;
import md.leonis.ps.editor.utils.Config;

import java.io.File;
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

    public void refreshButtonClick() throws Exception {
        Config.newSaveState = new SaveState(Config.saveStateFile);
        //show diff
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 5; i++) {
            showGameDiff(i, sb, Config.saveState.getSaveGames()[i], Config.newSaveState.getSaveGames()[i]);
        }

        textArea.setText(sb.toString());

        Config.saveState = Config.newSaveState;
    }

    private void showGameDiff(int index, StringBuilder sb, SaveGame oldGame, SaveGame newGame) {
        if (oldGame.toString().equals(newGame.toString())) {
            return;
        }

        sb.append("\n").append("Game #").append(index).append("\n");

        // Game
        addDiff(sb, "Name", oldGame.getName(), newGame.getName());
        addDiff(sb, "Status", oldGame.getStatus().toString(), newGame.getStatus().toString());
        addDiff(sb, "Mesetas", oldGame.getMesetas(), newGame.getMesetas());
        addDiff(sb, "Items Count", oldGame.getItemsCount(), newGame.getItemsCount());
        addDiff(sb, "Items", oldGame.getItems(), newGame.getItems()); //todo title
        addDiff(sb, "Companions Count", oldGame.getCompanionsCount(), newGame.getCompanionsCount());
        addDiff(sb, "Events", oldGame.getEvents(), newGame.getEvents());
        addDiff(sb, "Chests", oldGame.getChests(), newGame.getChests());
        addDiff(sb, "Bosses", oldGame.getBosses(), newGame.getBosses());
        addDiff(sb, "Unknown_5D8_5DF", oldGame.getUnknown_5D8_5DF(), newGame.getUnknown_5D8_5DF());
        addDiff(sb, "Unknown_5E3_5EF", oldGame.getUnknown_5E3_5EF(), newGame.getUnknown_5E3_5EF());
        addDiff(sb, "Unknown_5F1_5FF", oldGame.getUnknown_5F1_5FF(), newGame.getUnknown_5F1_5FF());

        //todo first fight achievement
        //Events[0]: 0 -> 255
        //Unknown_418_4FF[15]: 0 -> 255


        //Level: 3 -> 4
        //Experience: 98 -> 100
        //Max Hp: 25 -> 34
        //Max Mp: 0 -> 4
        //Attack: 24 -> 26
        //Defense: 23 -> 28
        //Combat Spells: 0 -> 1
        //Curative Spells: 0 -> 1


        // Geo
        Geo oldGeo = oldGame.getGeo();
        Geo newGeo = newGame.getGeo();

        if (oldGeo.getColor() != newGeo.getColor() && oldGeo.getColor() == 0) {
            sb.append("Entered the dungeon...").append("\n"); //todo name
        }

        if (oldGeo.getColor() != newGeo.getColor() && oldGeo.getColor() != 0) {
            sb.append("Left the dungeon...").append("\n"); //todo name
        }

        //addDiff(sb, "Planet", oldGeo.getPlanet().name(), newGeo.getPlanet().name()); //todo unused now (null)
        //addDiff(sb, "Name", oldGeo.getName(), newGeo.getName()); //todo unused now (null)
        addDiffHex(sb, "X", oldGeo.getX(), newGeo.getX());
        addDiffHex(sb, "Y", oldGeo.getY(), newGeo.getY());
        addDiffHex(sb, "X2", oldGeo.getX2(), newGeo.getX2());
        addDiffHex(sb, "Y2", oldGeo.getY2(), newGeo.getY2());

        //todo items, events, ..., unknown - надо выводить конкретную разницу. так же где можно - выводить имена.

        //понять где сейчас можно по цвету. 0 - на улице.
        //dungeon (0B) - mapLayer, mapId, x,y те же, меняются только dungeon и room. если нет точного room, то в приоритете та, у которой в названии нет скобок.
        //но поскольку на одной карте может быть 2 подземелья - надо вычислять ближайшее по номеру комнаты.
        //outdoor (0D) - брать mapLayer, mapId, потом по x, y находить ближайшее место.
        //вообще, на больших картах будет часто обманывать, было бы хорошо так же брать в расчёт подземелья,
        //и если подземелье ближе всего, допустим в радиусе 3, то вычислять название планеты (mapLayer, mapId), обрезать скобки, и прибавлять (near + название подземелья (самое короткое)).
        //подземелья 16х16, надо вспомнить какая там нумерация. первый байт - y, второй - x.

        addDiff(sb, "Map Layer", oldGeo.getMapLayer(), newGeo.getMapLayer());
        addDiff(sb, "Map Id", oldGeo.getMapId(), newGeo.getMapId());
        addDiff(sb, "Type", oldGeo.getType().name(), newGeo.getType().name());
        addDiff(sb, "Dungeon", oldGeo.getDungeon(), newGeo.getDungeon());
        addDiff(sb, "Color", oldGeo.getColor(), newGeo.getColor());
        addDiff(sb, "Room", oldGeo.getRoom(), newGeo.getRoom());
        addDiff(sb, "Direction", oldGeo.getDirection().name(), newGeo.getDirection().name());
        addDiff(sb, "Transport", oldGeo.getTransport(), newGeo.getTransport());
        addDiff(sb, "Church", oldGeo.getChurch(), newGeo.getChurch());
        addDiff(sb, "Animation#1", oldGeo.getAnimation1(), newGeo.getAnimation1());
        addDiff(sb, "Animation#2", oldGeo.getAnimation2(), newGeo.getAnimation2());
        addDiff(sb, "Unknown_40B", oldGeo.getUnknown_40B(), newGeo.getUnknown_40B());
        addDiff(sb, "Unknown_418_4FF", oldGeo.getUnknown_418_4FF(), newGeo.getUnknown_418_4FF()); //todo похоже это события связанные с общением. получить что-то у кого-то или просто полезные диалоги.

        for (int j = 0; j < 4; j++) {
            Hero oldHero = oldGame.getHeroes()[j];
            Hero newHero = newGame.getHeroes()[j];
            if (!oldHero.toString().equals(newHero.toString())) {
                addDiff(sb, "Name", oldHero.getName(), newHero.getName());
                addDiff(sb, "Alive", oldHero.isAlive(), newHero.isAlive());
                addDiff(sb, "Level", oldHero.getLevel(), newHero.getLevel());
                addDiff(sb, "Experience", oldHero.getExperience(), newHero.getExperience());
                addDiff(sb, "Hp", oldHero.getHp(), newHero.getHp());
                addDiff(sb, "Max Hp", oldHero.getMaxHp(), newHero.getMaxHp());
                addDiff(sb, "Mp", oldHero.getMp(), newHero.getMp());
                addDiff(sb, "Max Mp", oldHero.getMaxMp(), newHero.getMaxMp());
                addDiff(sb, "Attack", oldHero.getAttack(), newHero.getAttack());
                addDiff(sb, "Defense", oldHero.getDefense(), newHero.getDefense());
                addDiff(sb, "Weapon", oldHero.getWeapon(), newHero.getWeapon()); //todo title
                addDiff(sb, "Armor", oldHero.getArmor(), newHero.getArmor()); //todo title
                addDiff(sb, "Shield", oldHero.getShield(), newHero.getShield()); //todo title
                addDiff(sb, "State", oldHero.getState(), newHero.getState());
                addDiff(sb, "Combat Spells", oldHero.getCombatSpells(), newHero.getCombatSpells());
                addDiff(sb, "Curative Spells", oldHero.getCurativeSpells(), newHero.getCurativeSpells());
            }
        }
    }

    private void addDiff(StringBuilder sb, String title, String oldValue, String newValue) {
        if (!oldValue.equals(newValue)) {
            sb.append(title).append(": ").append(oldValue).append(" -> ").append(newValue).append("\n");
        }
    }

    private void addDiff(StringBuilder sb, String title, int oldValue, int newValue) {
        if (oldValue != newValue) {
            sb.append(title).append(": ").append(oldValue).append(" -> ").append(newValue).append("\n");
        }
    }

    private void addDiffHex(StringBuilder sb, String title, int oldValue, int newValue) {
        if (oldValue != newValue) {
            sb.append(title).append(": ").append(toHex(oldValue)).append(" -> ").append(toHex(newValue)).append("\n");
        }
    }

    private void addDiff(StringBuilder sb, String title, boolean oldValue, boolean newValue) {
        if (oldValue != newValue) {
            sb.append(title).append(": ").append(oldValue).append(" -> ").append(newValue).append("\n"); //todo YES/NO (is alive)
        }
    }

    private void addDiff(StringBuilder sb, String title, int[] oldValue, int[] newValue) {
        for (int i = 0; i < oldValue.length; i++) {
            if (oldValue[i] != newValue[i]) {
                sb.append(title).append("[").append(i).append("]: ").append(oldValue[i]).append(" -> ").append(newValue[i]).append("\n");
            }
        }
    }

    private String toHex(int value) {
        return String.format("%02X %02X", (byte) value, (byte) (value >>> 8));
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
