package md.leonis.bin;

import md.leonis.ps.editor.model.SaveState;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.io.File;
import java.io.IOException;
import java.net.URISyntaxException;

public class DumpTest extends Assert {

    private Dump romData;

    @Test
    public void size() throws Exception {
        assertEquals(romData.size(), 8188);
    }

    @Test
    public void moveTo() throws Exception {
        for (int i = 0; i < SaveState.START_TEXT.length(); i++) {
            romData.moveTo(i);
            assertEquals(romData.getByte(), SaveState.START_TEXT.codePointAt(i));
        }
        for (int i = SaveState.START_TEXT.length() - 1; i >= 0 ; i--) {
            romData.moveTo(i);
            assertEquals(romData.getByte(), SaveState.START_TEXT.codePointAt(i));
        }
    }

    @Test
    public void readString() throws Exception {
        assertEquals(romData.readString(SaveState.START_TEXT.length()), SaveState.START_TEXT);
    }

    @Test
    public void checkZeroes() throws Exception {
        romData.moveTo(0x00);
        assertFalse(romData.checkZeroes(0x10));
        romData.moveTo(0x40);
        assertTrue(romData.checkZeroes(0x10));
    }

    @Test
    public void getByte() throws Exception {
        romData.moveTo(0x40);
        assertEquals(romData.getByte(), 0x00);
        romData.moveTo(0x100);
        assertEquals(romData.getByte(), 0xF1);
    }

    @Test
    public void getBytePos() throws Exception {
        assertEquals(romData.getByte(0x40), 0x00);
        assertEquals(romData.getByte(0x100), 0xF1);
    }

    @Test
    public void getShort() throws Exception {
        romData.moveTo(0x5E0);
        assertEquals(romData.getShort(), 51455);
    }

    @Test
    public void getShortPos() throws Exception {
        assertEquals(romData.getShort(0x5E0), 51455);
    }

    @Test
    public void getBoolean() throws Exception {
        romData.moveTo(0x499);
        assertFalse(romData.getBoolean());
        romData.moveTo(0x500);
        assertTrue(romData.getBoolean());
    }

    @Before
    public void init() throws URISyntaxException, IOException {
        romData = new Dump(new File(Dump.class.getResource("/ps.ssm").toURI()));
    }
}
