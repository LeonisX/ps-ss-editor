package md.leonis.ps.editor.model;

import org.junit.Assert;
import org.junit.Test;

public class GeoTest extends Assert {

    @Test
    public void getTileY() {
        //Y: 03 B0 -> 04 00
        //2F0 752
        //300 768
        Geo geo = new Geo();
        geo.setY(0x03B0);
        assertEquals(752, geo.getTileY());
        geo.setY(0x0400);
        assertEquals(752 + 16, geo.getTileY());
    }

    @Test
    public void testToTileY() {
        assertEquals(0x230, Geo.toTileY(0x02B0));
        assertEquals(0x240, Geo.toTileY(0x02C0));
        assertEquals(0x240, Geo.toTileY(0x0300));
        assertEquals(0x250, Geo.toTileY(0x0310));
        assertEquals(0x260, Geo.toTileY(0x0320));
    }

    @Test
    public void testFromTileY() {
        assertEquals(0x2B0, Geo.fromTileY(0x0230));
        assertEquals(0x300, Geo.fromTileY(0x0240));
        assertEquals(0x310, Geo.fromTileY(0x0250));
        assertEquals(0x320, Geo.fromTileY(0x0260));
    }
}
