package md.leonis.ps.editor.model;

import javafx.scene.control.Alert;
import md.leonis.bin.Dump;
import md.leonis.ps.editor.model.enums.Emulator;
import md.leonis.ps.editor.model.enums.SaveType;
import md.leonis.ps.editor.utils.Config;
import md.leonis.ps.editor.utils.JavaFxUtils;
import md.leonis.ps.editor.utils.ValidationException;
import org.apache.commons.codec.binary.Hex;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

public class SaveState {

    public static final String START_TEXT = "PHANTASY STAR         BACKUP RAMPROGRAMMED BY          NAKA YUJI";
    private static final int FIRST_ZEROES_SIZE = 0xC0;
    //100 - 1d7 - данные сохранёнки — полное окно с рамкой. 12 строк по 18 байт. Буквы — 2 байта. Примеры: C010 F113
    //Основной шрифт имеет "кодовую страницу" 10.
    //Дополнительный шрифт (11) можно отражать по вертикали (15), горизонтали (13) и диагонали (17).
    //F1 11 F2 11 F2 11 F2 11 F2 11 F2 11 F2 11 F2 11 F1 13     ┌───────┐
    //F3 11 C0 10 C0 10 C0 00 C0 00 C0 00 C0 00 C0 00 F3 13     │       │
    //F3 11 C2 10 C0 10 DB 10 E1 10 CF 10 DC 10 DE 10 F3 13     │1 QWERT│
    //F3 11 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │       │
    //F3 11 C3 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │2      │
    //F3 11 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │       │
    //F3 11 C4 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │3      │
    //F3 11 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │       │
    //F3 11 C5 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │4      │
    //F3 11 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │       │
    //F3 11 C6 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13     │5      │
    //F1 15 F2 15 F2 15 F2 15 F2 15 F2 15 F2 15 F2 15 F1 17     └───────┘
    public static final int SAVE_SLOTS_FRAME_OFFSET = 0x100;
    public static final int FIRST_SAVE_SLOT_NAME_OFFSET = SAVE_SLOTS_FRAME_OFFSET + 0x12 * 2 + 6; // 0x12A

    private static final String FRAME_LINE_1 = "F1 11 F2 11 F2 11 F2 11 F2 11 F2 11 F2 11 F2 11 F1 13";
    private static final String FRAME_LINE_2 = "F3 11 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 C0 10 F3 13";
    private static final String FRAME_LINE_12 = "F1 15 F2 15 F2 15 F2 15 F2 15 F2 15 F2 15 F2 15 F1 17";

    //0x201-0x205 - жива ли игра (1)
    public static final int SAVE_GAME_STATUS_OFFSET = 0x201;

    private static final int SECOND_ZEROES_OFFSET = 0x206;
    private static final int SECOND_ZEROES_SIZE = 0x1FA;

    public static final int FIRST_SAVE_GAME_OFFSET = 0x400;
    public static final int SAVE_GAME_SIZE = 0x400; // 400 → 800 → C00 → 1000 → 1400

    private static final int ALISA_LEVEL_OFFSET = 0x105;

    private Dump romData;

    private Emulator emulator;
    private SaveType saveType;

    private SaveGame ramGame;
    private SaveGame[] saveGames = new SaveGame[5];

    public SaveState(File file) throws IOException {
        this(new Dump(file));
    }

    // Load blank SSM
    public SaveState(Dump romData) {
        this.romData = romData;
        emulator = Emulator.detectEmulatorBySize(romData.size());
        saveType = Emulator.detectSaveTypeBySize(romData.size());
        romData.setCharset("windows-1252");
        updateObject();
    }

    public void updateObject() {
        if (saveType == SaveType.RAM) {
            ramGame = new SaveGame();
        }

        for (int i = 0; i < 5; i++) {
            saveGames[i] = new SaveGame();
        }

        testInnerData();

        // read saveGames
        if (saveType == SaveType.RAM) {
            ramGame.setName("RAM");
            ramGame.readFromRom(romData, emulator.getSnapshotRamOffset());
        }

        for (int i = 0; i < 5; i++) {
            saveGames[i].setName(readName(i));
            saveGames[i].readFromRom(romData, getSramOffset() + i * SAVE_GAME_SIZE + FIRST_SAVE_GAME_OFFSET);
        }
    }

    private void testInnerData() {
        if (emulator == null || saveType == null) {
            throw new ValidationException("Unknown Save State type!");
        }

        if (saveType == SaveType.RAM) {
            ramGame.setStatus(SaveGameStatus.RAM);
        }

        setSramOffset();
        romData.moveToAddress(0);

        var str = romData.readString(START_TEXT.length());

        if (!str.equals(START_TEXT)) {
            System.out.println(romData.size());
            System.out.println(Integer.toHexString(getSramOffset()));
            System.out.println( Hex.encodeHexString(str.getBytes()) );
            System.out.println(Arrays.toString(str.getBytes()));
            System.out.println(Arrays.toString(START_TEXT.getBytes()));
            throw new ValidationException("Not a Phantasy Star Save State: corrupted header!");
        }
        if (!romData.checkZeroes(FIRST_ZEROES_SIZE)) {
            throw new ValidationException("Not a Phantasy Star Save State: garbage in header!");
        }
        romData.moveToAddress(SECOND_ZEROES_OFFSET);
        if (!romData.checkZeroes(SECOND_ZEROES_SIZE)) {
            throw new ValidationException("Not a Phantasy Star Save State: garbage in header!");
        }
        for (int i = 0; i < 5; i++) {
            if (romData.getByte(0x126 + i * 0x24) - 0xC1 != i + 1) {
                throw new ValidationException("Save slots listing is corrupted!");
            }
        }

        romData.moveToAddress(SAVE_GAME_STATUS_OFFSET);
        for (int i = 0; i < 5; i++) {
            if (romData.getByte() == 1) saveGames[i].setStatus(SaveGameStatus.ACTIVE);
        }
        // check for deleted
        for (int i = 0; i < 5; i++) {
            romData.moveToAddress(FIRST_SAVE_GAME_OFFSET + i * SAVE_GAME_SIZE + ALISA_LEVEL_OFFSET);
            if ((romData.getByte() != 0) && (saveGames[i].getStatus().equals(SaveGameStatus.EMPTY)))
                saveGames[i].setStatus(SaveGameStatus.DELETED);
        }
    }

    public void updateDump() {
        if (saveType == SaveType.RAM) {
            ramGame.writeToRom(romData, emulator.getSnapshotRamOffset());
        }

        for (int i = 0; i < 5; i++) {
            saveGames[i].writeToRom(romData, getSramOffset() + i * SAVE_GAME_SIZE + FIRST_SAVE_GAME_OFFSET);
            //System.out.println(this);
        }
    }

    //TODO test
    public String readName(int index) {
        StringBuilder name = new StringBuilder();
        setSramOffset();
        for (int i = 0; i < 5; i++) {
            romData.moveToAddress(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + i * 2);
            //TODO charset select
            name.append(Config.languageTable.getProperty(Integer.toHexString(romData.getByte())));
        }
        return name.toString();
    }

    //TODO test
    public void eraseName(int index) {
        setSramOffset();
        romData.moveToAddress(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24);
        for (int i = 0; i < 5; i++) {
            romData.setByte(0xC0);
            romData.setByte(0x00);
        }
        romData.moveToAddress(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + 0x12);
        for (int i = 0; i < 5; i++) {
            romData.setByte(0xC0);
            romData.setByte(0x00);
        }
    }

    //TODO test
    public void writeName(int index, String name) {
        setSramOffset();
        romData.moveToAddress(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24);
        for (int i = 0; i < 5; i++) {
            romData.setByte(0xC0);
            romData.setByte(0x10);
        }
        romData.moveToAddress(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + 0x12);
        for (int i = 0; i < 5; i++) {
            romData.setByte(0xC0);
            romData.setByte(0x10);
        }

        for (int i = 0; i < name.length(); i++) {
            romData.setByte(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + i * 2, Integer.decode("0x" + Config.getKeyByValue(name.charAt(i))));
        }
    }

    //TODO test
    public void clearArea(int index) {
        if (index >= 0) {
            setSramOffset();
            int start = FIRST_SAVE_GAME_OFFSET + index * SAVE_GAME_SIZE;
            Arrays.fill(romData.getDump(), start, start + SAVE_GAME_SIZE, (byte) 0x00);
        }
    }

    public void save() {
        try {
            romData.saveToFile(Config.saveStateFile);
        } catch (Exception e) {
            JavaFxUtils.showAlert("Save Error", e.getMessage(), Alert.AlertType.ERROR);
            e.printStackTrace();
        }
    }

    protected void setSramOffset() {
        romData.setOffset(getSramOffset());
    }

    public int getSramOffset() {
        return (saveType == SaveType.RAM) ? emulator.getSnapshotSramOffset() : 0;
    }

    public Dump getRomData() {
        return romData;
    }

    public void setRomData(Dump romData) {
        this.romData = romData;
    }

    public SaveGame[] getSaveGames() {
        return saveGames;
    }

    public void setSaveGames(SaveGame[] saveGames) {
        this.saveGames = saveGames;
    }

    public Emulator getEmulator() {
        return emulator;
    }

    public SaveType getSaveType() {
        return saveType;
    }

    public SaveGame getRamGame() {
        return ramGame;
    }

    @Override
    public String toString() {
        return "SaveState{" +
                ", emulator=" + emulator +
                ", saveType=" + saveType +
                ", ramGame=" + ramGame +
                ", saveGames=" + Arrays.toString(saveGames) +
                ", romData=" + romData +
                '}';
    }
}
