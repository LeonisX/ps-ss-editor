package md.leonis.extractor.model;

import org.junit.Test;

import static md.leonis.extractor.model.Palette.camineetPalette;

// TODO complete tests
public class PaletteTest {

    @Test
    public void exportAsDtm() {
        camineetPalette.exportAsDtm("dtm.pal");
    }

    @Test
    public void exportAsJasc() {
        camineetPalette.exportAsJasc("jasc.pal");
    }

    @Test
    public void exportAsGimp() {
        camineetPalette.exportAsGimp("gimp.gpl");
    }

    @Test
    public void exportAsRaw() {
        camineetPalette.exportAsRaw("meka.raw");
    }
}
