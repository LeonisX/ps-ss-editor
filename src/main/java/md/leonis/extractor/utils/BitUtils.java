package md.leonis.extractor.utils;

public class BitUtils {

    public static int getBit(int number, int position) {
        return (number >> position) & 1;
    }

    public static boolean getBooleanBit(int number, int position) {
        return ((number >> position) & 1) == 1;
    }
}
