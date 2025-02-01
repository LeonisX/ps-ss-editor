package md.leonis.extractor.utils;

import md.leonis.bin.Dump;

import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// From http://rosettacode.org/wiki/Run-length_encoding#Java
public class RunLengthEncoding {

    public static String encode(String source) {
        StringBuffer dest = new StringBuffer();
        for (int i = 0; i < source.length(); i++) {
            int runLength = 1;
            while (i + 1 < source.length() && source.charAt(i) == source.charAt(i + 1)) {
                runLength++;
                i++;
            }
            dest.append(runLength);
            dest.append(source.charAt(i));
        }
        return dest.toString();
    }

    public static String decode(String source) {
        StringBuffer dest = new StringBuffer();
        Pattern pattern = Pattern.compile("[0-9]+|[a-zA-Z]");
        Matcher matcher = pattern.matcher(source);
        while (matcher.find()) {
            int number = Integer.parseInt(matcher.group());
            matcher.find();
            while (number-- != 0) {
                dest.append(matcher.group());
            }
        }
        return dest.toString();
    }

    /*
    "Phantasy Star" RLE
    This format is used to compress both tiles and tilemap data.
    The data is deinterleaved, and each bitplane is then classified into runs of consecutive identical bytes,
    and runs of consecutive non-identical bytes. Any runs of more than 127 bytes are split into multiple runs.
    They are then stored in the format:

    %0nnnnnnn dd          ; run of n consecutive identical bytes, value dd
    %1nnnnnnn dd dd dd... ; run of n consecutive non-identical bytes; values follow
    %00000000             ; end of bitplane
    */
    public static Integer[] decode(Dump dump, int startAddress) {
        dump.moveToAddress(startAddress);
        return decode(dump);
    }

    public static Integer[] decode(Dump dump) {
        List<Integer> result = new LinkedList<>();
        do {
            //System.out.println(Integer.toHexString(dump.getIndex()));
            if (dump.getIndex() >= dump.size()) {
                return result.toArray(new Integer[0]);
            }
            int count = dump.getByte();
            //System.out.println(Integer.toHexString(count) + " " + Integer.toHexString(dump.getIndex() - 1));
            if (count == 0) {
                return result.toArray(new Integer[0]);
            }
            if ((count & 0x80) == 0) { // < 0b10000000
                int value = dump.getByte();
                for (int i = 0; i < count; i++) {
                    //System.out.println(" " + Integer.toHexString(value));
                    result.add(value);
                }
            } else {
                count = count & 0b01111111; // 0x7F
                for (int i = 0; i < count; i++) {
                    if (dump.getIndex() >= dump.size()) {
                        return result.toArray(new Integer[0]);
                    }
                    int value = dump.getByte();
                    //System.out.println(" " + Integer.toHexString(value));
                    result.add(value);
                }
            }
        } while (true);
    }
}