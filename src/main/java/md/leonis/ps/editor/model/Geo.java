package md.leonis.ps.editor.model;


import md.leonis.bin.Dump;

public class Geo {

    private Planets planet;
    private String name;

    // 0x400: 00
    private int x;        // 0x401-0x402  X coordinate on Map. Step on right: 0006 → 1006 → 2006
    // 0x403: 00
    // 0x404: 00
    private int y;        // 0x405-0x406  Y coordinate on Map. Examples: 0001, 5001
    // 0x407: 00
    private int map;    // 0x408-0x409  Map #. Examples: 00 00 — Palma, 04 04 — Camineet
    // map: 00 00
    // 00 = Palma
    // 01 = Motavia
    // 02 = Dezoris
    // 04 = Camineet, Parolit
    // 05 = Gothic, Eppi, Loar, Abion
    // 06 = Drasgow, Shion
    // 07 = Paseo, Uzo, Casba, Sopia
    // 08 = Skure, Twintown (entrances)
    // 09 = Skure, Twintown
    // 0A = Air Castle
    // Second number - # of map (0x00 - 0x17)


    private int direction;// 0x40A        Direction in dungeon. Default = 0; To right: 1 → 2 → 3. Contains after exit from dungeon
    // 0x40B: 00
    private int room;   // 0x40C        Room # in dungeon; Both X (4-bit), Y (4-bit). Examples: 5E
    private int dungeon;// 0x40D        Dungeon #. Examples: Medusa's Cave, outdoor: 00; Camineet Warehouse: 02
                        // (00-3A) Interesting things: some dungeons intersects (Scion/Naula caves, ...)
    private int transport;// 0x40E        00 -> 08 — hovercraft, 04 — landrover, 0C - ice digger
    private int animation1;// 0x40F        00..03 - transport animation? set 00
    private int animation2;// 0x410        00..03 - transport animation? set 00
    private int y2;       // 0x411-0x412  Y coordinate on Map. Same as 0x405-0x406
    private int x2;       // 0x413-0x414  X coordinate on Map. Same as 0x401-0x402
    private int color;    // 0x415        Dungeon color. (00-0A) Examples: 02: light green, 03: blue? 04: blue, 05: light blue, 06: yellow, 07: pink,...
    private int type;     // 0x416        Type of environment. 0D: outdoor, cities; 0B: dungeons
    private int church;   // 0x417        Church # (for teleport); Examples: 00: no; 01: Camineet, 02: Gothic, 03: Loar, ...
    // 0x418-4FF: 00

    public void readFromRom(Dump romData, int offset) {
        romData.setOffset(offset);
        x = romData.getShort(0x00);
        y = romData.getShort( 0x05);
        map = romData.getShort( 0x08);
        direction = romData.getByte(0x0A);
        room = romData.getByte(0x0C);
        dungeon = romData.getByte(0x0D);
        transport = romData.getByte(0x0E);
        animation1 = romData.getByte(0x0F);
        animation2 = romData.getByte(0x10);
        y2 = romData.getShort( 0x11);
        x2 = romData.getShort(0x13);
        color = romData.getByte(0x15);
        type = romData.getByte(0x16);
        church = romData.getByte(0x17);
        romData.setOffset(0);
    }


    public Planets getPlanet() {
        return planet;
    }

    public void setPlanet(Planets planet) {
        this.planet = planet;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public int getMap() {
        return map;
    }

    public void setMap(int map) {
        this.map = map;
    }

    public int getDirection() {
        return direction;
    }

    public void setDirection(int direction) {
        this.direction = direction;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public int getDungeon() {
        return dungeon;
    }

    public void setDungeon(int dungeon) {
        this.dungeon = dungeon;
    }

    public int getTransport() {
        return transport;
    }

    public void setTransport(int transport) {
        this.transport = transport;
    }

    public int getAnimation1() {
        return animation1;
    }

    public void setAnimation1(int animation1) {
        this.animation1 = animation1;
    }

    public int getAnimation2() {
        return animation2;
    }

    public void setAnimation2(int animation2) {
        this.animation2 = animation2;
    }

    public int getY2() {
        return y2;
    }

    public void setY2(int y2) {
        this.y2 = y2;
    }

    public int getX2() {
        return x2;
    }

    public void setX2(int x2) {
        this.x2 = x2;
    }

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getChurch() {
        return church;
    }

    public void setChurch(int church) {
        this.church = church;
    }

    @Override
    public String toString() {
        return "Geo{" +
                "planet=" + planet +
                ", name='" + name + '\'' +
                ", x=" + x +
                ", y=" + y +
                ", map=" + map +
                ", direction=" + direction +
                ", room=" + room +
                ", dungeon=" + dungeon +
                ", transport=" + transport +
                ", animation1=" + animation1 +
                ", animation2=" + animation2 +
                ", y2=" + y2 +
                ", x2=" + x2 +
                ", color=" + color +
                ", type=" + type +
                ", church=" + church +
                '}';
    }
}