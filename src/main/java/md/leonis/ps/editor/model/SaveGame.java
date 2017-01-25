package md.leonis.ps.editor.model;


import md.leonis.bin.Dump;

import java.util.Arrays;

public class SaveGame {

    private String name;
    private SaveGameStatus status = SaveGameStatus.EMPTY;

    // 0x400: 00
    private int x;        // 0x401-0x402  X coordinate on Map. Step on right: 0006 → 1006 → 2006
    // 0x403: 00
    // 0x404: 00
    private int y;        // 0x405-0x406  Y coordinate on Map. Examples: 0001, 5001
    // 0x407: 00
    private int mapId;    // 0x408-0x409  Map #. Examples: 00 00 — Palma, 04 04 — Camineet
    private int direction;// 0x40A        Direction in dungeon. Default = 0; To right: 1 → 2 → 3. Contains after exit from dungeon
    // 0x40B: 00
    private int roomId;   // 0x40C        Room # in dungeon; Both X (4-bit), Y (4-bit). Examples: 5E
    private int dungeonId;// 0x40D        Dungeon #. Examples: Medusa's Cave, outdoor: 00; Camineet Warehouse: 02
    private int transport;// 0x40E        00 -> 08 — hovercraft, 04 — landrover, 0C - ice digger
    private int animation1;// 0x40F        00..03 - transport animation? set 00
    private int animation2;// 0x410        00..03 - transport animation? set 00
    private int y2;       // 0x411-0x412  Y coordinate on Map. Same as 0x405-0x406
    private int x2;       // 0x413-0x414  X coordinate on Map. Same as 0x401-0x402
    private int color;    // 0x415        Dungeon color. Examples: 02: light green, 03: blue? 04: blue, 05: light blue, 06: yellow, 07: pink,...
    private int type;     // 0x416        Type of environment. 0D: outdoor, cities; 0B: dungeons
    private int church;   // 0x417        Church # (for teleport); Examples: 00: no; 01: Camineet, 02: Gothic, 03: Loar, ...
    // 0x418-4FF: 00

    private Hero[] heroes = new Hero[4]; // 0x500, 0x510, 0x520, 0x530 (0x10 bytes): Alisa, Myau, Tylon, Lutz
    // 0x540-0x5BF  Last monsters in battle; up to 8 monsters x 0x10 bytes. Need to ignore, 00.
    private int[] items = new int[24]; // 0x5C0-0x5D7  Items, max 24.
    // 0x5D8-0x5DF  ?????????????
    private int mesetas;    // 0x5E0-0x5E1  Mesetas count
    private int itemsCount; // 0x5E2        Items count
    // 0x5E3-0x5EF  ?????????????
    private int companionsCount; // 0x5F0        Companions count (max 3)
    // 0x5F1-0x5FF  ?????????????

    private int[] events = new int[0x100]; // 0x600-0x618  Important events. Examples: save Luveno, Tylon, killed Dr Mad, Lasiec. Often 00 -> 01
    // 0x619-0x6FF  00
    private int[] chests = new int[0x0C0]; // 0x700-0x794  Found chests. 00 -> FF
    // 0x795-0x7C0  00
    private int[] bosses = new int[0x040];// 0x7C1-0x7D8  defeated bosses. 00 -> FF
    // Other data: zeroes

    public void readFromRom(Dump romData, int offset) {
        romData.setOffset(offset);
        x = romData.getShort(0x00);
        y = romData.getShort( 0x05);
        mapId = romData.getShort( 0x08);
        direction = romData.getByte(0x0A);
        roomId = romData.getByte(0x0C);
        dungeonId = romData.getByte(0x0D);
        transport = romData.getByte(0x0E);
        animation1 = romData.getByte(0x0F);
        animation2 = romData.getByte(0x10);
        y2 = romData.getShort( 0x11);
        x2 = romData.getShort(0x13);
        color = romData.getByte(0x15);
        type = romData.getByte(0x16);
        church = romData.getByte(0x17);
        //read heroes
        romData.moveTo(0x100); // 0x500
        for (int i = 0; i < 4; i++) {
            heroes[i] = Hero.readFromRom(romData, i);
        }

        mesetas = romData.getShort(0x1E0);
        itemsCount = romData.getByte(0x1E2);
        for (int i = 0; i < itemsCount; i ++) {
            items[i] = romData.getByte(0x1C0 + i);
        }
        companionsCount = romData.getByte(0x1F0);

        romData.moveTo(0x200); // 0x600
        for (int i = 0; i < events.length; i++) {
            events[i] = romData.getByte();
        }
        for (int i = 0; i < chests.length; i++) {
            chests[i] = romData.getByte();
        }
        for (int i = 0; i < bosses.length; i++) {
            bosses[i] = romData.getByte();
        }

        romData.setOffset(0);
    }

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

    public int getMapId() {
        return mapId;
    }

    public void setMapId(int mapId) {
        this.mapId = mapId;
    }

    public int getDirection() {
        return direction;
    }

    public void setDirection(int direction) {
        this.direction = direction;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public int getDungeonId() {
        return dungeonId;
    }

    public void setDungeonId(int dungeonId) {
        this.dungeonId = dungeonId;
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

    public Hero[] getHeroes() {
        return heroes;
    }

    public void setHeroes(Hero[] heroes) {
        this.heroes = heroes;
    }

    public int[] getItems() {
        return items;
    }

    public void setItems(int[] items) {
        this.items = items;
    }

    public int getMesetas() {
        return mesetas;
    }

    public void setMesetas(int mesetas) {
        this.mesetas = mesetas;
    }

    public int getItemsCount() {
        return itemsCount;
    }

    public void setItemsCount(int itemsCount) {
        this.itemsCount = itemsCount;
    }

    public int getCompanionsCount() {
        return companionsCount;
    }

    public void setCompanionsCount(int companionsCount) {
        this.companionsCount = companionsCount;
    }

    @Override
    public String toString() {
        return "SaveGame{" +
                "name='" + name + '\'' +
                ", status=" + status +
                ", x=" + x +
                ", y=" + y +
                ", mapId=" + mapId +
                ", direction=" + direction +
                ", roomId=" + roomId +
                ", dungeonId=" + dungeonId +
                ", transport=" + transport +
                ", animation1=" + animation1 +
                ", animation2=" + animation2 +
                ", y2=" + y2 +
                ", x2=" + x2 +
                ", color=" + color +
                ", type=" + type +
                ", church=" + church +
                ", heroes=" + Arrays.toString(heroes) +
                ", items=" + Arrays.toString(items) +
                ", mesetas=" + mesetas +
                ", itemsCount=" + itemsCount +
                ", companionsCount=" + companionsCount +
                ", events=" + Arrays.toString(events) +
                ", chests=" + Arrays.toString(chests) +
                ", bosses=" + Arrays.toString(bosses) +
                '}';
    }
}
