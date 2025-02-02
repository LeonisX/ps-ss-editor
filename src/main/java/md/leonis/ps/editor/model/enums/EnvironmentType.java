package md.leonis.ps.editor.model.enums;

import java.util.Arrays;

// Type of environment. 0D (13): outdoor, cities; 0B (11): dungeons
public enum EnvironmentType {

    UNDEFINED(0x00),
    DUNGEON(0x0B),
    OUTDOOR(0x0D);

    private final int id;

    EnvironmentType(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public static EnvironmentType byId(int id) {
        return Arrays.stream(EnvironmentType.values()).filter(e -> e.id == id).findFirst()
                .orElseThrow(() -> new RuntimeException("Unknown Environment Type ID: " + id));
    }
}
