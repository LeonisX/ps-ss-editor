package md.leonis.ps.editor.model.enums;

// Dungeon colors
public enum DungeonColor {

    COLOR_0("FFAA00", "FF5500"),
    COLOR_1("00FF55", "55FF55"),
    COLOR_2("00AAFF", "0055FF"),
    COLOR_3("0055FF", "0000AA"),
    COLOR_4("AAAAAA", "5555AA"),
    COLOR_5("FFFF00", "FFFF00"),
    COLOR_6("FFFF55", "FFAA55"),
    COLOR_7("FF0000", "AA0000"),
    COLOR_8("00FFFF", "000000"),
    COLOR_9("00FFFF", "00AAFF"),
    COLOR_A("00FF00", "00AA00");

    private final String color1;
    private final String color2;

    DungeonColor(String color1, String color2) {
        this.color1 = color1;
        this.color2 = color2;
    }

    public String getColor1() {
        return color1;
    }

    public String getColor2() {
        return color2;
    }

    public static DungeonColor byId(int id) {
        return DungeonColor.values()[id];
    }
}
