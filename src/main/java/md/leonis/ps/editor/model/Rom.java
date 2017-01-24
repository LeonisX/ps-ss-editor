package md.leonis.ps.editor.model;

import md.leonis.ps.editor.utils.Config;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Arrays;

import static md.leonis.ps.editor.model.SaveState.FIRST_SAVE_GAME_OFFSET;
import static md.leonis.ps.editor.model.SaveState.FIRST_SAVE_SLOT_NAME_OFFSET;
import static md.leonis.ps.editor.model.SaveState.SAVE_GAME_SIZE;

public class Rom {

    private byte[] data;
    private File file;

    private int index = 0;

    private int offset = 0;

    //TODO методы для доступа и проверки
    //конструктор из файла
    //всякие указатели

    public Rom(File file) throws IOException {
        this.file = file;
        data = Files.readAllBytes(file.toPath());
    }

    public int size() {
        return data.length;
    }

    public void moveTo(int address) {
        index = address + offset;
    }

    public String readString(int length) {
        byte[] slice = Arrays.copyOfRange(data, index, index + length);
        index += length;
        return new String(slice);
    }

    public boolean checkZeroes(int length) {
        byte[] slice = Arrays.copyOfRange(data, index, index + length);
        int sum = 0;
        for (int i : slice) sum += i;
        index += length;
        return sum == 0;
    }

    public int getByte() {
        int result = Byte.toUnsignedInt(data[index]);
        index ++;
        return result;
    }

    public int getByte(int address) {
        moveTo(address);
        return getByte();
    }

    public int getShort() {
        int result = Byte.toUnsignedInt(data[index]);
        index ++;
        result = result + Byte.toUnsignedInt(data[index]) * 256;
        index ++;
        return result;
    }

    public int getShort(int address) {
        moveTo(address);
        return getShort();
    }

    public boolean getBoolean() {
        boolean result = data[index] != 0;
        index ++;
        return result;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }



    //TODO test
    public String readName(int index) {
        String name = "";
        for (int i = 0; i < 5; i ++) {
            moveTo(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + i * 2);
            //TODO charset select
            name += Config.languageTable.getProperty(Integer.toHexString(getByte()));
        }
        return name;
    }

    //TODO test
    public void setByte(int address, int value) {
        moveTo(address);
        setByte(value);
    }

    //TODO test
    public void setByte(int value) {
        //System.out.print(Integer.toHexString(index) + ": ");
        //System.out.println(Integer.toHexString(value));
        data[index] = (byte) value;
        index ++;
    }

    //TODO test
    public void setBoolean(int address, boolean value) {
        moveTo(address);
        setBoolean(value);
    }

    //TODO test
    public void setBoolean(boolean value) {
        //System.out.print(Integer.toHexString(index) + ": ");
        //System.out.println(Integer.toHexString(value));
        data[index] = value ? (byte) 1 : 0;
        index ++;
    }

    //TODO test
    public void eraseName(int index) {
        moveTo(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24);
        for (int i = 0; i < 5; i ++) {
            setByte(0xC0);
            setByte(0x00);
        }
        moveTo(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + 0x12);
        for (int i = 0; i < 5; i ++) {
            setByte(0xC0);
            setByte(0x00);
        }
    }

    //TODO test
    public void writeName(int index, String name) {
        //System.out.println(Integer.toHexString(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24));
        //String name = Config.saveState.getSaveGames()[index].getName();
        moveTo(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24);
        for (int i = 0; i < 5; i ++) {
            setByte(0xC0);
            setByte(0x10);
        }
        moveTo(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + 0x12);
        for (int i = 0; i < 5; i ++) {
            setByte(0xC0);
            setByte(0x10);
        }

        System.out.println(name);
        for (int i = 0; i < name.length(); i ++) {
            //System.out.println(name.charAt(i));
            //System.out.println(Config.getKeyByValue(name.charAt(i)));
            setByte(FIRST_SAVE_SLOT_NAME_OFFSET + index * 0x24 + i * 2, Integer.decode("0x" + Config.getKeyByValue(name.charAt(i))));
        }
    }

    //TODO test
    public void clearArea(int index) {
        int start = FIRST_SAVE_GAME_OFFSET + index * SAVE_GAME_SIZE;
        Arrays.fill(data, start, start + SAVE_GAME_SIZE, (byte) 0x00);
    }



    //TODO test
    public void writeHexDump(int address) {

    }

}
