package md.leonis.ps.editor.model;


public class SaveGame {

    private String name;
    private SaveGameStatus status = SaveGameStatus.EMPTY;

    // 0x400: 00
    // 0x401-0x402  X coordinate on Map. Step on right: 0006 → 1006 → 2006
    // 0x403: 00
    // 0x404: 00
    // 0x405-0x406  Y coordinate on Map. Examples: 0001, 5001
    // 0x407: 00
    // 0x408-0x409  Map #. Examples: 00 00 — Palma, 04 04 — Camineet
    // 0x40A        Direction in dungeon. Default = 0; To right: 1 → 2 → 3. Contains after exit from dungeon
    // 0x40B: 00
    // 0x40C        Room # in dungeon; Both X (4-bit), Y (4-bit). Examples: 5E
    // 0x40D        Dungeon #. Examples: Medusa's Cave, outdoor: 00; Camineet Warehouse: 02
    // 0x40E        00 -> 08 — hovercraft, 04 — landrover, 0C - ice digger
    // 0x40F        00..03 - transport animation?
    // 0x410        00..03 - transport animation?
    // 0x411-0x412  Y coordinate on Map.
    // 0x413-0x414  X coordinate on Map.
    // 0x415        Dungeon color. Examples: 02: light green, 03: blue? 04: blue, 05: light blue, 06: yellow, 07: pink,
    // 0x416        Type of environment. 0D: outdoor, 0B: dungeons
    // 0x417        Church # (for teleport); Examples: 00: no; 01: Camineet, 02: Gothic, 03: Loar, ...
    // 0x418-4FF: 00

    private Hero[] heroes = new Hero[4]; // 0x500, 0x510, 0x520, 0x530 (0x10 bytes): Alisa, Myau, Tylon, Lutz

    // 0x540-0x5BF  Last monsters in battle; up to 8 monsters x 0x10 bytes. Need to ignore.

    // 0x5C0-0x5D7  Items, max 24.

    // 0x5D8-0x5DF  ?????????????

    // 0x5E0-0x5E1  Mesetas count
    // 0x5E2        Items count
    // 0x5E3-0x5EF  ?????????????

    // 0x5F0        Companions count (max 3)
    // 0x5F1-0x5FF  ?????????????

    // 0x600-0x618  Important events. Examples: save Luveno, Tylon, killed Dr Mad, Lasiec. Often 00 -> 01
    // 0x619-0x6FF  00

    // 0x700-0x794  Found chests. 00 -> FF
    // 0x795-0x7C0  00

    // 0x7C1-0x7D8  defeated bosses. 00 -> FF
    // Other data: zeroes



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public SaveGameStatus getStatus() {
        return status;
    }

    public void setStatus(SaveGameStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "SaveGame{" +
                "name='" + name + '\'' +
                ", status=" + status +
                '}';
    }
}
