package md.leonis.ps.editor.model.enums;

import java.util.Arrays;

// Direction in dungeon. Default = 0; To right: 1 → 2 → 3. Contains after exit from dungeon
public enum Direction {

    NORTH(0),
    EAST(1),
    SOUTH(2),
    WEST(3);

    private final int id;

    Direction(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public static Direction byId(int id) {
        return Arrays.stream(Direction.values()).filter(e -> e.id == id).findFirst()
                .orElseThrow(() -> new RuntimeException("Unknown Direction ID: " + id));
    }
}
