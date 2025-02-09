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
}
