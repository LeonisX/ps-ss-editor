package md.leonis.ps.editor.view;

import javafx.fxml.FXML;
import javafx.geometry.Rectangle2D;
import javafx.scene.canvas.Canvas;
import javafx.scene.control.*;
import javafx.scene.effect.ColorAdjust;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import md.leonis.ps.editor.model.*;
import md.leonis.ps.editor.model.enums.Direction;
import md.leonis.ps.editor.utils.Config;

import java.io.File;
import java.nio.file.Paths;
import java.util.*;

public class TrackPaneController {

    @FXML
    public TextArea textArea;
    @FXML
    public Button refreshButton;
    public CheckBox clearLogsCheckBox;
    public CheckBox autoRefreshCheckBox;
    public Slider refreshIntervalSlider;
    public TextField refreshTextField;


    public ImageView alisaImageView;
    public Canvas dungeonCanvas;
    public ImageView mapImageView;
    private Image dungeonTilesImage;
    private Image odinImage;

    private final ColorAdjust noEffects = new ColorAdjust();
    private final ColorAdjust bwEffect = new ColorAdjust(0, -0.6, 0, -0.6);

    private Direction direction = Direction.SOUTH; // Hero direction
    private Direction dungeonDirection = Direction.NORTH; // Dungeon map rotation direction

    private final List<String> mapsList = List.of(
            "Palma",
            "Motavia",
            "Dezoris",
            "Empty",
            "Camineet, Parolit, Spaceport",
            "Gothic, Eppi, Loar, Abion, Bortevo",
            "Drasgow, Scion",
            "Paseo, Uzo, Spaceport, Casba, Sopia",
            "Skure, Twintown (Surface)",
            "Skure, Twintown",
            "Air Castle",
            "Empty"
    );

    private final Map<Integer, Image> maps = new HashMap<>();

    @FXML
    private void initialize() {
        Timer rescanTimer = new Timer(true);
        rescanTimer.schedule(new FileWatcher(Config.saveStateFile), new Date(), 1);

        Timer animationTimer = new Timer(true);
        animationTimer.schedule(new Animator(), new Date(), 250);

        refreshIntervalSlider.valueProperty().addListener((changed, oldValue, newValue) ->
                refreshTextField.setText(String.valueOf((newValue.intValue() == 0) ? 1 : newValue.intValue())));

        for (int i = 0; i < mapsList.size(); i++) {
            maps.put(i, loadImage(mapsList.get(i)));
        }

        alisaImageView.setImage(new Image(new File("Alisa.png").toURI().toString()));

        dungeonTilesImage = new Image(new File("Dungeon Tiles.png").toURI().toString());
        odinImage = new Image(new File("Odin.png").toURI().toString());

        //todo пока тут только RAM выводится

        Geo geo = Config.saveState.getRamGame().getGeo(); //todo select game if need
        setMap(geo);
        showMap(geo);

        showDungeon(Config.saveState.getRamGame());
        setAlice(Config.saveState.getRamGame());
    }

    private Image loadImage(String fileName) {
        return new Image(Paths.get(".").resolve("maps").resolve(fileName + ".png").toUri().toString());
    }

    public void refreshButtonClick() throws Exception {
        Config.newSaveState = new SaveState(Config.saveStateFile);
        //show diff
        StringBuilder sb = new StringBuilder();

        showGameDiff(-1, sb, Config.saveState.getRamGame(), Config.newSaveState.getRamGame());

        for (int i = 0; i < 5; i++) {
            showGameDiff(i, sb, Config.saveState.getSaveGames()[i], Config.newSaveState.getSaveGames()[i]);
        }

        if (clearLogsCheckBox.isSelected()) {
            textArea.setText(sb.toString());
        } else {
            textArea.setText(textArea.getText() + sb);
        }

        Config.saveState = Config.newSaveState;
    }

    private void showGameDiff(int index, StringBuilder sb, SaveGame oldGame, SaveGame newGame) {
        if (oldGame.toString().equals(newGame.toString())) {
            return;
        }

        String title = (index == -1) ? "RAM" : "Game #" + index;
        sb.append("\n").append(title).append("\n");

        // Game
        addDiff(sb, "Name", oldGame.getName(), newGame.getName());

        Geo oldGeo = oldGame.getGeo();
        Geo newGeo = newGame.getGeo();

        if (!oldGeo.getMapTitle().equals(newGeo.getMapTitle())) {
            addDiff(sb, "Location", oldGeo.getMapTitle(), newGeo.getMapTitle());
        }

        addDiff(sb, "Status", oldGame.getStatus().toString(), newGame.getStatus().toString());
        addDiff(sb, "Mesetas", oldGame.getMesetas(), newGame.getMesetas());
        addDiff(sb, "Items Count", oldGame.getItemsCount(), newGame.getItemsCount());
        addItemsDiff(sb, oldGame.getItems(), newGame.getItems());
        addDiff(sb, "Companions Count", oldGame.getCompanionsCount(), newGame.getCompanionsCount());
        addDiff(sb, "Events", oldGame.getEvents(), newGame.getEvents());
        addDiff(sb, "Chests", oldGame.getChests(), newGame.getChests());
        addDiff(sb, "Bosses", oldGame.getBosses(), newGame.getBosses());
        addDiff(sb, "Unknown_5D8_5DF", oldGame.getUnknown_5D8_5DF(), newGame.getUnknown_5D8_5DF());
        addDiff(sb, "Unknown_5E3_5EF", oldGame.getUnknown_5E3_5EF(), newGame.getUnknown_5E3_5EF());
        addDiff(sb, "Unknown_5F1_5FF", oldGame.getUnknown_5F1_5FF(), newGame.getUnknown_5F1_5FF());
        addDiff(sb, "Unknown_619_6EF", oldGame.getUnknown_619_6EF(), newGame.getUnknown_619_6EF());
        addDiff(sb, "Unknown_795_7C0", oldGame.getUnknown_795_7C0(), newGame.getUnknown_795_7C0());
        addDiff(sb, "Unknown_7D9_7FF", oldGame.getUnknown_7D9_7FF(), newGame.getUnknown_7D9_7FF());

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

        //Level: 4 -> 5
        //Max Hp: 34 -> 45
        //Max Mp: 4 -> 6
        //Attack: 26 -> 27
        //Defense: 38 -> 42
        //Combat Spells: 1 -> 2

        //Level: 5 -> 6
        //Experience: 329 -> 335
        //Hp: 39 -> 34
        //Max Hp: 45 -> 54
        //Max Mp: 6 -> 8
        //Attack: 27 -> 30
        //Defense: 42 -> 45
        //Combat Spells: 2 -> 3

        //иала без фонаря
        //Dungeon: 2 -> 19
        //Room: 94 -> 222


        // Geo

        //addDiff(sb, "Planet", oldGeo.getPlanet().name(), newGeo.getPlanet().name()); //todo unused now (null)
        //addDiff(sb, "Name", oldGeo.getName(), newGeo.getName()); //todo unused now (null)
        addDiffHex(sb, "X", oldGeo.getX(), newGeo.getX());
        addDiffHex(sb, "Y", oldGeo.getY(), newGeo.getY());
        System.out.printf("ByteSwapped (for CSV): %s;%s%n", toHex0(newGeo.getByteSwappedX()), toHex0(newGeo.getByteSwappedY()));
        addDiffHex(sb, "X2", oldGeo.getTileAlignedX(), newGeo.getTileAlignedX());
        addDiffHex(sb, "Y2", oldGeo.getTileAlignedY(), newGeo.getTileAlignedY());

        if (oldGeo.getMapId() != newGeo.getMapId()) {
            setMap(newGeo);
        }

        if (oldGeo.getX() != newGeo.getX() || oldGeo.getY() != newGeo.getY()) {
            showMap(newGeo);
        }

        showDungeon(newGame); //todo нет условия (перерисовывается каждый раз)
        setAlice(newGame); //todo нет условия (перерисовывается каждый раз)

        if (newGeo.getColor() > 0) {
            direction = rotateDirection(newGeo.getDirection(), dungeonDirection);
        } else {
            if (oldGeo.getX() != newGeo.getX()) {
                direction = (oldGeo.getX() < newGeo.getX()) ? Direction.EAST : Direction.WEST;
            }
            if (oldGeo.getY() != newGeo.getY()) {
                direction = (oldGeo.getY() < newGeo.getY()) ? Direction.SOUTH : Direction.NORTH;
            }
        }

        addDiff(sb, "Map Layer", oldGeo.getMapLayer(), newGeo.getMapLayer());
        addDiff(sb, "Map Id", oldGeo.getMapId(), newGeo.getMapId());
        addDiff(sb, "Type", oldGeo.getType().name(), newGeo.getType().name());
        //todo без фонаря попадает в какой-то особый данжн, Dungeon: 0, Room: 220
        //на самом деле, данж и комната уже назначаются, но цвет ещё нет, темно.
        addDiff(sb, "Dungeon", oldGeo.getDungeon(), newGeo.getDungeon());
        addDiff(sb, "Color", oldGeo.getColor(), newGeo.getColor()); //todo dungeon with color
        addDiffHex(sb, "Room", oldGeo.getRoom(), newGeo.getRoom());
        addDiff(sb, "Direction", oldGeo.getDirection().name(), newGeo.getDirection().name());
        //todo Transport: Leather Clothes (16) -> None - выдаётся только во время полёта в космосе
        addItemDiff(sb, "Transport", oldGeo.getTransport(), newGeo.getTransport());
        addChurchDiff(sb, oldGeo.getChurch(), newGeo.getChurch());
        addDiff(sb, "Animation#1", oldGeo.getAnimation1(), newGeo.getAnimation1());
        addDiff(sb, "Animation#2", oldGeo.getAnimation2(), newGeo.getAnimation2());
        //addDiff(sb, "Unused_400_X", oldGeo.getUnused_400_X(), newGeo.getUnused_400_X());
        //addDiff(sb, "Unused_403_Y", oldGeo.getUnused_403_Y(), newGeo.getUnused_403_Y());
        addDiff(sb, "Unknown_404", oldGeo.getUnknown_404(), newGeo.getUnknown_404());
        addDiff(sb, "Unknown_407", oldGeo.getUnknown_407(), newGeo.getUnknown_407());
        addDiff(sb, "Unknown_40B", oldGeo.getUnknown_40B(), newGeo.getUnknown_40B());
        // Unknown_418_4FF[25]: 0 -> 255 - спас тайлона
        addDiff(sb, "Unknown_418_4FF", oldGeo.getUnknown_418_4FF(), newGeo.getUnknown_418_4FF()); //todo похоже это события связанные с общением. получить что-то у кого-то или просто полезные диалоги.

        for (int j = 0; j < 4; j++) {
            Hero oldHero = oldGame.getHeroes()[j];
            Hero newHero = newGame.getHeroes()[j];
            if (!oldHero.toString().equals(newHero.toString())) {
                sb.append("\n").append(Config.heroes.get(j)).append("\n");
                showHeroDiff(sb, oldHero, newHero);
            }
        }

        for (int j = 0; j < 8; j++) {
            Hero oldMonster = oldGame.getMonsters()[j];
            Hero newMonster = newGame.getMonsters()[j];
            if (!oldMonster.toString().equals(newMonster.toString())) {
                sb.append("\n").append(getMonsterName(newMonster.getMaxHp(), newMonster.getAttack(), newMonster.getDefense())).append(" #").append(j).append("\n");
                showHeroDiff(sb, oldMonster, newMonster);
            }
        }
    }

    private String getMonsterName(int hp, int attack, int defence) {
        return Config.monsters.stream().filter(m -> m.getHp() == hp && m.getAttack() == attack && m.getDefence() == defence)
                .map(Monster::getName).findFirst().orElse("UNKNOWN");
    }

    private void showHeroDiff(StringBuilder sb, Hero oldHero, Hero newHero) {
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
        addItemDiff(sb, "Weapon", oldHero.getWeapon(), newHero.getWeapon());
        addItemDiff(sb, "Armor", oldHero.getArmor(), newHero.getArmor());
        addItemDiff(sb, "Shield", oldHero.getShield(), newHero.getShield());
        addDiff(sb, "State", oldHero.getState(), newHero.getState());
        addDiff(sb, "Combat Spells", oldHero.getCombatSpells(), newHero.getCombatSpells());
        addDiff(sb, "Curative Spells", oldHero.getCurativeSpells(), newHero.getCurativeSpells());
    }

    private void setMap(Geo geo) {
        mapImageView.setImage(maps.get(geo.getMapLayer()));
    }

    private void showMap(Geo geo) {
        //coordinates
        //x +128
        //y +96
        mapImageView.setViewport(new Rectangle2D(geo.getTileX() - 16, geo.getTileY() - 32, 320, 288));
    }

    private void showDungeon(SaveGame saveGame) {
        if (saveGame.getGeo().getColor() > 0) {
            dungeonDirection = getDungeonMapRotation(saveGame.getGeo());
            mapImageView.setEffect(bwEffect);
            dungeonCanvas.setVisible(true);
            var gc = dungeonCanvas.getGraphicsContext2D(); //todo может быть не надо скрывать в таком случае вообще.
            gc.clearRect(0, 0, dungeonCanvas.getWidth(), dungeonCanvas.getHeight());
            for (int y = 0; y < 16; y++) {
                for (int x = 0; x < 16; x++) {
                    int rx = rotateX(x, y, dungeonDirection);
                    int ry = rotateY(x, y, dungeonDirection);

                    int tileId = Config.dungeonMaps[saveGame.getGeo().getDungeon()].get(rx, ry);
                    if (tileId == 23) {
                        dungeonCanvas.getGraphicsContext2D().drawImage(odinImage, 0, 0, 16, 24, x * 16, y * 16 - 8, 16, 24);
                    } else {
                        //todo подумать как лучше вращать некоторые тайлы. rotate только для всего изображения. сделать ещё 3 копии???
                        dungeonCanvas.getGraphicsContext2D().drawImage(dungeonTilesImage, tileId * 16, 0, 16, 16, x * 16, y * 16, 16, 16);
                    }
                }
            }

        } else {
            mapImageView.setEffect(noEffects);
            dungeonCanvas.setVisible(false);
        }
    }

    private int rotateX(int x, int y, Direction direction) {
        return switch (direction) {
            case NORTH -> x;
            case EAST -> y;
            case SOUTH -> 15 - x;
            case WEST -> 15 - y;
        };
    }

    private int rotateY(int x, int y, Direction direction) {
        return switch (direction) {
            case NORTH -> y;
            case EAST -> 15 - x;
            case SOUTH -> 15 - y;
            case WEST -> x;
        };
    }

    private int rotateXA(int x, int y, Direction direction) {
        return switch (direction) {
            case NORTH -> x;
            case WEST -> y;
            case SOUTH -> 15 - x;
            case EAST -> 15 - y;
        };
    }

    private int rotateYA(int x, int y, Direction direction) {
        return switch (direction) {
            case NORTH -> y;
            case WEST -> 15 - x;
            case SOUTH -> 15 - y;
            case EAST -> x;
        };
    }

    private Direction rotateDirection(Direction direction, Direction dungeonDirection) {
        // W -> S -> E -> N
        int sum = direction.getId() + dungeonDirection.getId();
        return (sum > 3) ? Direction.byId(sum - 4) : Direction.byId(sum);
    }

    private void setAlice(SaveGame saveGame) {
        if (saveGame.getGeo().getColor() > 0) {
            int x = saveGame.getGeo().getRoomX();
            int y = saveGame.getGeo().getRoomY();
            //System.out.printf("Room: %02X%n", saveGame.getGeo().getRoom());
            //System.out.println("Alice X: " + x + "; Y: " + y + "; D: " + direction);

            int rx = rotateXA(x, y, dungeonDirection);
            int ry = rotateYA(x, y, dungeonDirection);

            System.out.println("Alice RX: " + rx + "; RY: " + ry);

            alisaImageView.setLayoutX(rx * 16 + 32);
            alisaImageView.setLayoutY(ry * 16 + 8);

        } else {
            alisaImageView.setLayoutX(144);
            alisaImageView.setLayoutY(120);
        }
    }

    private Direction getDungeonMapRotation(Geo geo) {
        var candidates = Config.trackGeos.stream()
                .filter(g -> g.getMapId() == geo.getMapId() && g.getMapLayer() == geo.getMapLayer() && g.getDungeon() == geo.getDungeon())
                .filter(g -> Math.abs(g.getByteSwappedX() - geo.getX()) < 24)
                .sorted(Comparator.comparing(Geo::getName))
                .toList();

        //System.out.println("Candidates: " + candidates.stream().map(g -> toHex(g.getX())).toList());
        //System.out.println("Candidates: " + candidates.stream().map(g -> toHex(getByteSwappedX()))).toList());

        /*if (candidates.size() > 1) {
            System.out.println("Candidates: " + candidates);
        }*/

        System.out.println(candidates.isEmpty() ? "NO DUNGEON MAP!!!" : "DUNGEON ROTATION: " + candidates.get(0).getDirection());

        return candidates.isEmpty() ? Direction.NORTH : candidates.get(0).getDirection();
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

    private void addDiffBytes(StringBuilder sb, String title, int[] oldValue, int[] newValue) {
        sb.append(title).append(": ").append(arrayToHex(oldValue)).append(" -> ").append(arrayToHex(newValue)).append("\n");
    }

    private String arrayToHex(int[] array) {
        StringBuilder sb = new StringBuilder();
        for (int value : array) {
            sb.append(String.format("%02X ", value));
        }
        return sb.toString();
    }

    private void addItemDiff(StringBuilder sb, String title, int oldValue, int newValue) {
        if (oldValue != newValue) {
            sb.append(title).append(": ").append(getItemName(oldValue)).append(" -> ").append(getItemName(newValue)).append("\n");
        }
    }

    private void addItemsDiff(StringBuilder sb, int[] oldValue, int[] newValue) {
        for (int i = 0; i < oldValue.length; i++) {
            if (oldValue[i] != newValue[i]) {
                sb.append("Items[").append(i).append("]: ").append(getItemName(oldValue[i])).append(" -> ").append(getItemName(newValue[i])).append("\n");
            }
        }
    }

    private void addChurchDiff(StringBuilder sb, int oldValue, int newValue) {
        if (oldValue != newValue) {
            String oldChurch = (oldValue <= 8 && oldValue >= 0) ? Config.churches.get(oldValue) : "UNKNOWN: " + oldValue;
            String newChurch = (newValue <= 8 && newValue >= 0) ? Config.churches.get(newValue) : "UNKNOWN: " + newValue;
            sb.append("Church: ").append(oldChurch).append(" -> ").append(newChurch).append("\n");
        }
    }

    private String getItemName(int itemId) {
        return (itemId <= 64 && itemId >= 0) ? Config.items.get(itemId) : "UNKNOWN: " + itemId;
    }

    private String toHex(int value) {
        return String.format("%02X %02X", (byte) (value >> 8), (byte) value);
    }

    private String toHex0(int value) {
        return String.format("%02X%02X", (byte) (value >> 8), (byte) value);
    }

    private String toHexByteSwapped(int value) {
        return String.format("%02X%02X", (byte) value, (byte) (value >> 8));
    }

    public void autoRefreshCheckBoxClick() {
        refreshButton.setDisable(autoRefreshCheckBox.isSelected());
        refreshIntervalSlider.setDisable(!autoRefreshCheckBox.isSelected());
        refreshTextField.setDisable(!autoRefreshCheckBox.isSelected());
    }

    public void onMapMouseRelease(MouseEvent mouseEvent) {
        Geo geo = (Config.newSaveState == null) ? Config.saveState.getRamGame().getGeo() : Config.newSaveState.getRamGame().getGeo();
        String x = toHexByteSwapped(roundTo16(geo.getX()) - 16 - 128 + roundTo16(mouseEvent.getX()));
        String y = toHexByteSwapped(Geo.fromTileY(roundTo16(geo.getTileY()) + 64 - 0xC0  + roundTo16(mouseEvent.getY())));

        String text = String.format("\"%02X%02X\"", geo.getMapLayer(), geo.getMapId()) + ";" +
                String.format("\"%02X\"", geo.getDungeon()) + ";" +
                String.format("\"%02X\"", geo.getRoom()) + ";" +
                '"' + x + "\";" +
                '"' + y + "\";" +
                String.format("\"%02X\"", geo.getDirection().getId()) + ";" +
                String.format("\"%02X\"", geo.getColor()) + ";" +
                String.format("\"%02X\"", geo.getType().getId()) + ";" +
                geo.getMapTitle();

        textArea.setText(textArea.getText() + "\n" + text + "\n");
    }

    protected int roundTo16(int value) {
        return (value / 16) * 16;
    }

    protected int roundTo16(double value) {
        return ((int) value / 16) * 16;
    }

    public class FileWatcher extends TimerTask {

        private final File file;
        private long fileTimeStamp;
        private long nextRefreshTime;

        public FileWatcher(File file) {
            this.file = file;
            this.fileTimeStamp = file.lastModified();
        }

        public final void run() {
            if (System.currentTimeMillis() < nextRefreshTime || !autoRefreshCheckBox.isSelected()) {
                return;
            }

            long timeStamp = file.lastModified();

            if (this.fileTimeStamp != timeStamp) {
                this.fileTimeStamp = timeStamp;
                try {
                    refreshButtonClick();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            nextRefreshTime = System.currentTimeMillis() + Long.parseLong(refreshTextField.getText());
        }
    }

    public class Animator extends TimerTask {

        private int frame = 0;

        public final void run() {
            alisaImageView.setViewport(new Rectangle2D(frame * 16, direction.getId() * 24, 16, 24));
            frame = (frame == 3) ? 0 : frame + 1;
        }
    }
}
