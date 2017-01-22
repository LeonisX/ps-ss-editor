package md.leonis.ps.editor.model;


import md.leonis.ps.editor.utils.Config;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

public class SaveState {

    private static int MINIMAL_ROM_SIZE = 8188;
    private static String START_TEXT = "PHANTASY STAR         BACKUP RAMPROGRAMMED BY          NAKA YUJI";
    private static int FIRST_ZEROES_SIZE = 0xC0;
    //100 - 1d7 - данные сохранёнки — полное окно с рамкой. 12 строк по 18 байт. Буквы — 2 байта. Примеры: C010 F113
    private static int SECOND_ZEROES_OFFSET = 0x206;
    private static int SECOND_ZEROES_SIZE = 0x1FA;
    //201-205 - жива ли игра (1)
    private static int SAVE_GAME_STATUS_OFFSET = 0x201;

    private static int FIRST_SAVE_GAME_OFFSET = 0x400;
    private static int SAVE_GAME_SIZE = 0x400; // 400 → 800 → C00 → 1000 → 1400

    private static int ALISA_LEVEL_OFFSET = 0x105;


    private int initialOffset;

    private Rom romData;

    private SaveGame[] saveGames = new SaveGame[5];

    public SaveState(File file) throws IOException {
        romData = new Rom(file);
        for(int i = 0; i < 5; i ++) {
            saveGames[i] = new SaveGame();
        }
        testInnerData();
        for(int i = 0; i < 5; i ++) {
            String name = "";
            for(int j = 0; j < 5; j ++) {
                romData.moveTo(0x126 + i * 0x24 + 4 + j * 2);
                //TODO charset
                name += Config.languageTable.getProperty(Integer.toHexString(romData.getByte()));
            }
            saveGames[i].setName(name);
        }
        System.out.println(this);
    }

    public SaveState(Rom romData) {
        this.romData = romData;
    }

    private void testInnerData() {
        if (romData.size() < MINIMAL_ROM_SIZE) throw new RuntimeException("Save State too small");
        //TODO other sizes
        if (!romData.readString(START_TEXT.length()).equals(START_TEXT)) throw new RuntimeException("Corrupted header / not Phantasy Star Save State");
        if (!romData.checkZeroes(FIRST_ZEROES_SIZE)) throw new RuntimeException("Garbage in header / not Phantasy Star Save State");
        romData.moveTo(SECOND_ZEROES_OFFSET);
        if (!romData.checkZeroes(SECOND_ZEROES_SIZE)) throw new RuntimeException("Garbage in header / not Phantasy Star Save State");
        for (int i = 0; i < 5; i ++) {
            romData.moveTo(0x126 + i * 0x24);
            //System.out.println(Integer.toHexString(0x126 + i * 0x24));
            if (romData.getByte() - 0xC1 != i + 1 ) throw new RuntimeException("Corrupt save slots listing");
        }

        romData.moveTo(SAVE_GAME_STATUS_OFFSET);
        for (int i = 0; i < 5; i ++) {
            if (romData.getByte() == 1) saveGames[i].setStatus(SaveGameStatus.ACTIVE);
        }
        // check for deleted
        for (int i = 0; i < 5; i ++) {
            //romData.moveTo(FIRST_SAVE_GAME_OFFSET + i * SAVE_GAME_SIZE + ALISA_LEVEL_OFFSET);
            //if ((romData.getByte() != 0) && (saveGames[i].getStatus().equals(SaveGameStatus.EMPTY))) saveGames[i].setStatus(SaveGameStatus.DELETED);
            romData.moveTo(0x126 + 0x12 + 5 + i * 0x24);
            //System.out.println(Integer.toHexString(0x126 + 0x12 + i * 0x24));
            if ((romData.getByte() == 0)) saveGames[i].setStatus(SaveGameStatus.DELETED);
        }

    }

    public Rom getRomData() {
        return romData;
    }

    public void setRomData(Rom romData) {
        this.romData = romData;
    }

    public SaveGame[] getSaveGames() {
        return saveGames;
    }

    public void setSaveGames(SaveGame[] saveGames) {
        this.saveGames = saveGames;
    }

    @Override
    public String toString() {
        return "SaveState{" +
                "initialOffset=" + initialOffset +
                ", romData=" + romData +
                ", saveGames=" + Arrays.toString(saveGames) +
                '}';
    }
}
