package md.leonis.bin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Arrays;


public class Dump {

    private byte[] dump;
    //private File file;

    private ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;

    private int offset = 0; // Current offset in dump.

    private int index = 0; // Relative address. Full address: offset + index



    //TODO методы для доступа и проверки
    //конструктор из файла
    //всякие указатели

    public Dump(File file) throws IOException {
        //this.file = file;
        dump = Files.readAllBytes(file.toPath());
    }


    public void saveToFile(File saveStateFile) throws IOException {
        Files.write(saveStateFile.toPath(), dump);
    }

    public int size() {
        return dump.length;
    }

    public void moveTo(int address) {
        index = offset + address;
    }

    public String readString(int length) {
        byte[] slice = Arrays.copyOfRange(dump, index, index + length);
        index += length;
        return new String(slice);
    }

    public boolean checkZeroes(int length) {
        byte[] slice = Arrays.copyOfRange(dump, index, index + length);
        int sum = 0;
        for (int i : slice) sum += i;
        index += length;
        return sum == 0;
    }

    public int getByte() {
        int result = Byte.toUnsignedInt(dump[index]);
        index ++;
        return result;
    }

    public int getByte(int address) {
        moveTo(address);
        return getByte();
    }

    public int getShort() {
        int result;
        switch (byteOrder) {
            case BIG_ENDIAN:
                result = Byte.toUnsignedInt(dump[index]);
                index++;
                result += Byte.toUnsignedInt(dump[index]) * 256;
                index++;
                break;
            default:
                result = Byte.toUnsignedInt(dump[index]) * 256;
                index++;
                result += Byte.toUnsignedInt(dump[index]);
                index++;
                break;
        }
        return result;
    }

    public int getShort(int address) {
        moveTo(address);
        return getShort();
    }

    public boolean getBoolean() {
        boolean result = dump[index] != 0;
        index ++;
        return result;
    }

    //TODO test, byteswap
    public int[] getArray(int address, int length) {
        int[] result = new int[length];
        moveTo(address);
        for (int i = 0; i < length; i++) {
            result[i] = Byte.toUnsignedInt(dump[index]);
            index++;
        }
        return result;
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
        dump[index] = (byte) value;
        index ++;
    }

    //TODO test
    public void setShort(int address, int value) {
        moveTo(address);
        setShort(value);
    }

    //TODO test
    public void setShort(int value) { // 01 FE -> byte1 = 01; byte2 = FE
        byte byte1 = (byte) (value >>> 8);
        byte byte2 = (byte) (value);
        switch (byteOrder) {
            case BIG_ENDIAN:
                setByte(byte1);
                setByte(byte2);
                break;
            default:
                setByte(byte2);
                setByte(byte1);
                break;
        }
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
        dump[index] = value ? (byte) 1 : 0;
        index ++;
    }






    //TODO test
    public void writeHexDump(int address) {

    }



    public void erase(int address, int size) {
        moveTo(address);
        for (int i = 0; i < size; i++) {
            setByte(0x00);
        }
    }



    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }



    public byte[] getDump() {
        return dump;
    }

    public void setDump(byte[] dump) {
        this.dump = dump;
    }

    public ByteOrder getByteOrder() {
        return byteOrder;
    }

    public void setByteOrder(ByteOrder byteOrder) {
        this.byteOrder = byteOrder;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Dump dump = (Dump) o;
        return Arrays.equals(this.dump, dump.dump);
    }

    @Override
    public int hashCode() {
        return Arrays.hashCode(dump);
    }

}
