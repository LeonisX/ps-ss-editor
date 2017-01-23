package md.leonis.ps.editor.model;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Arrays;

public class Rom {

    private byte[] data;
    private File file;

    private int index = 0;

    private int offset = 0;

    //TODO методы для доступа и проверки
    //конструктор из файла
    //всякие указатели

    public Rom(File file) throws IOException {
        data = Files.readAllBytes(file.toPath());
    }

    public int size() {
        return data.length;
    }

    public void moveTo(int pos) {
        index = pos + offset;
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
        int result = data[index] & 0xFF;
        index ++;
        return result;
    }

    public int getByte(int pos) {
        moveTo(pos);
        return getByte();
    }

    public int getShort() {
        int result = data[index] & 0xFF;
        index ++;
        result = result + (data[index] & 0xFF) * 256;
        index ++;
        return result;
    }

    public int getShort(int pos) {
        moveTo(pos);
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
}
