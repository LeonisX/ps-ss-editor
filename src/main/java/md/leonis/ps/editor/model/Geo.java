package md.leonis.ps.editor.model;

import md.leonis.bin.Dump;
import md.leonis.ps.editor.model.enums.Direction;
import md.leonis.ps.editor.model.enums.EnvironmentType;
import md.leonis.ps.editor.utils.Config;

import java.util.Arrays;
import java.util.Comparator;

public class Geo {

    public static int increment = 0;

    private Planets planet; //TODO удалить в будущем, вычислять на лету
    private String name;

    private int unused_400_X;    // 0x400: 00 - X. In SS always 00. Probably offset in tilemap
    private int x;              // 0x401-0x402  X coordinate on Map. Step on right: 0006 → 1006 → 2006.
    private int unused_403_Y;    // 0x403: 00
    private int unknown_404;    // 0x404: 00 - Y. In SS always 00. Probably offset in tilemap
    private int y;              // 0x405-0x406  Y coordinate on Map. Examples: 0001, 5001. 405 max B0
    //More about Y. Transitions: 02 B0 -> 03 00, 03 B0 -> 04 00. 12 tiles (192, C0) instead of 256 (100). Apparently it’s easier to count screens this way.

    private int unknown_407;    // 0x407: 00
    private int mapLayer;       // 0x408 Map layer. Whole planet or group of maps. Examples: 00 - Palma, 04 - Camineet, Parolit,...
    // map: 00 00
    // 00 = Palma
    // 01 = Motavia
    // 02 = Dezoris
    // 04 = Camineet, Parolit
    // 05 = Gothic, Eppi, Loar, Abion
    // 06 = Drasgow, Scion
    // 07 = Paseo, Uzo, Casba, Sopia
    // 08 = Skure, Twintown (surface)
    // 09 = Skure, Twintown
    // 0A = Air Castle
    private int mapId;          // 0x409        Map Id on layer. Examples: 00 — Palma, 04 — Camineet,... (0x00 - 0x17)
    private Direction direction;// 0x40A        Direction in dungeon. Default = 0; To right: 1 → 2 → 3. Contains after exit from dungeon
    private int unknown_40B;    // 0x40B: 00
    private int room;           // 0x40C        Room # in dungeon; Both Y (4-bit), X (4-bit). Examples: 5E. YX (Medusa's tower) XY (Dezorian Cavern #5) Already rotated?
    private int dungeon;        // 0x40D        Dungeon #. Examples: Medusa Cave, outdoor: 00; Camineet Warehouse: 02
    // (00-3A) Interesting things: some dungeons intersects (Scion/Naula caves, ...)
    private int transport;      // 0x40E        00 -> 08 — hovercraft, 04 — landrover, 0C - ice digger
    private int animation1;     // 0x40F        00..03 - transport animation? set 00
    private int animation2;     // 0x410        00..03 - transport animation? set 00
    private int tileAlignedY;   // 0x411-0x412  Y coordinate on Map, aligned by tile width (16). Old value, if Y is already aligned.
    private int tileAlignedX;   // 0x413-0x414  X coordinate on Map, aligned by tile width (16). Old value, if X is already aligned.
    private int color;          // 0x415        Dungeon color. (00-0A) Examples: 02: light green, 03: blue? 04: blue, 05: light blue, 06: yellow, 07: pink,...
    private EnvironmentType type;// 0x416       Type of environment. 0D (13): outdoor, cities; 0B (11): dungeons
    private int church;         // 0x417        Church # (for teleport); Examples: 00: no; 01: Camineet, 02: Gothic, 03: Loar, ...
    private int[] unknown_418_4FF = new int[232]; // 0x418-0x4FF  ?????????????   232 bytes     00 //todo может перенести в SaveGame

    public Geo() {
    }

    public Geo(String name) {
        this.name = name;
    }

    public Geo(/*Planets planet, */String name, int x, int y, int mapLayer, int mapId, int direction, int room, int dungeon, int transport, int animation1, int animation2, int tileAlignedY, int tileAlignedX, int color, int type, int church) {
        //this.planet = planet;
        if (type == 0x0B) transport = 0; // Fix for transport on dungeon exit
        this.name = name;
        this.x = x;
        this.y = y;
        this.mapLayer = mapLayer;
        this.mapId = mapId;
        this.direction = Direction.byId(direction);
        this.room = room;
        this.dungeon = dungeon;
        this.transport = transport;
        this.animation1 = animation1;
        this.animation2 = animation2;
        this.tileAlignedY = tileAlignedY;
        this.tileAlignedX = tileAlignedX;
        this.color = color;
        this.type = EnvironmentType.byId(type);
        this.church = church;
    }

    public void readFromRom(Dump romData, int offset) {
        romData.setOffset(offset);
        unused_400_X = romData.getByte(0x00);
        x = romData.getWord(0x01);
        unused_403_Y = romData.getByte(0x03);
        unknown_404 = romData.getByte(0x04);
        y = romData.getWord(0x05);
        unknown_407 = romData.getByte(0x07);
        mapLayer = romData.getByte(0x08);
        mapId = romData.getByte(0x09);
        direction = Direction.byId(romData.getByte(0x0A));
        unknown_40B = romData.getByte(0x0B);
        room = romData.getByte(0x0C);
        dungeon = romData.getByte(0x0D);
        transport = romData.getByte(0x0E);
        animation1 = romData.getByte(0x0F);
        animation2 = romData.getByte(0x10);
        tileAlignedY = romData.getWord(0x11);
        tileAlignedX = romData.getWord(0x13);
        color = romData.getByte(0x15);
        type = EnvironmentType.byId(romData.getByte(0x16));
        church = romData.getByte(0x17);

        if (romData.size() > 0x1F1) {
            romData.getBytes(0x1F1, unknown_418_4FF); // 0x5F1
        }

        romData.setOffset(0);
    }

    //todo unknown_418_4FF
    public void writeToRom(Dump romData) {
        romData.setByte(0x00, unused_400_X);
        romData.setWord(0x01, x);
        romData.setByte(0x03, unused_403_Y);
        romData.setByte(0x04, unknown_404);
        romData.setWord(0x05, y);
        romData.setByte(0x07, unknown_407);
        romData.setByte(0x08, mapLayer);
        romData.setByte(0x09, mapId);
        romData.setByte(0x0A, direction.getId());
        romData.setByte(0x0B, unknown_40B);
        romData.setByte(0x0C, room);
        romData.setByte(0x0D, dungeon);
        romData.setByte(0x0E, transport);
        romData.setByte(0x0F, animation1);
        romData.setByte(0x10, animation2);
        romData.setWord(0x11, tileAlignedY);
        romData.setWord(0x13, tileAlignedX);
        romData.setByte(0x15, color);
        romData.setByte(0x16, type.getId());
        romData.setByte(0x17, church);
    }

    public void copyDataTo(Geo destGeo) {
        destGeo.setX(x);
        destGeo.setY(y);
        destGeo.setMapLayer(mapLayer);
        destGeo.setMapId(mapId);
        destGeo.setDungeon(dungeon);
        destGeo.setRoom(room);
        destGeo.setDirection(direction);
        destGeo.setColor(color);
        destGeo.setType(type);
    }

    public String toCSV() {
        return String.format("\"%02X%02X\"", mapLayer, mapId) + ";" +
                String.format("\"%02X\"", dungeon) + ";" +
                String.format("\"%02X\"", room) + ";" +
                String.format("\"%04X\"", x) + ";" +
                String.format("\"%04X\"", y) + ";" +
                String.format("\"%02X\"", direction.getId()) + ";" +
                String.format("\"%02X\"", color) + ";" +
                String.format("\"%02X\"", type.getId()) + ";" +
                name;
    }

    public static Geo fromCSV(String csv) {
        //0 map  1dun   2room   3x  4y   5dir 6col  7 type        8 name
        //"4002";"7001";"0405";"02";"5E";"02";"00";"OUTDOOR";Palma Spaceport
        String[] chunks = csv.replace("\"", "").split(";");
        //Geo(String name, int x, int y, int mapLayer, int mapId, int direction, int room, int dungeon, int transport, int animation1, int animation2, int y2, int x2, int color, int type, int church) {
        return new Geo(chunks[8],                           // name
                fromHex(chunks[3]),                         // x
                fromHex(chunks[4]),                         // y
                fromHex(chunks[0].substring(0, 2)),         // mapLayer
                fromHex(chunks[0].substring(2)),  // mapId
                fromHex(chunks[5]),                         // direction todo пока код
                fromHex(chunks[2]),                         // room
                fromHex(chunks[1]),                         // dungeon
                0,                                          // transport
                0,                                          // animation1
                0,                                          // animation2
                fromHex(chunks[4]),                         // y2
                fromHex(chunks[3]),                         // x2
                fromHex(chunks[6]),                         // color
                fromHex(chunks[7]),                         // type todo пока откатил до кода
                0);                                         // church
    }

    private static int fromHex(String hex) {
        return Integer.parseInt(hex, 16);
    }

    public boolean isDungeon() {
        return type.equals(EnvironmentType.DUNGEON);
    }

    public boolean isCity() {
        return !isDungeon();
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
        this.tileAlignedX = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
        this.tileAlignedY = y;
    }

    public int getUnused_400_X() {
        return unused_400_X;
    }

    public int getUnused_403_Y() {
        return unused_403_Y;
    }

    public int getUnknown_404() {
        return unknown_404;
    }

    public int getUnknown_407() {
        return unknown_407;
    }

    public int getUnknown_40B() {
        return unknown_40B;
    }

    public int getTileAlignedY() {
        return tileAlignedY;
    }

    public int getTileAlignedX() {
        return tileAlignedX;
    }

    public int[] getUnknown_418_4FF() {
        return unknown_418_4FF;
    }

    public int getMapLayer() {
        return mapLayer;
    }

    public void setMapLayer(int mapLayer) {
        this.mapLayer = mapLayer;
    }

    public int getMapId() {
        return mapId;
    }

    public void setMapId(int mapId) {
        this.mapId = mapId;
    }

    public Direction getDirection() {
        return direction;
    }

    public void setDirection(Direction direction) {
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

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    public EnvironmentType getType() {
        return type;
    }

    public void setType(EnvironmentType type) {
        this.type = type;
    }

    public int getChurch() {
        return church;
    }

    public void setChurch(int church) {
        this.church = church;
    }

    public boolean isClearName() {
        return !(hasNameComment() || hasLevel());
    }

    public String getNameComment() {
        if (!hasNameComment()) return "";
        return name.substring(name.indexOf('(') + 1, name.length() - 1);
    }

    public boolean hasNameComment() {
        return name.contains("(");
    }

    public String getCleanName() {
        if (isClearName()) return name.trim();
        return removeNameComment(name.split("#")[0].trim());
    }

    public String getClearDungeonKey() {
        //dungeonIdXY=roomId;titleId;level;test commentId
        return String.format("dungeon%02X%04X%04X", dungeon, x, y);
    }

    public String getClearCityKey() {
        return String.format("city%02X%02X", mapLayer, mapId);
    }

    public String getLevel() {
        if (!hasLevel()) return "1";
        return removeNameComment(name.split("#")[1].trim());
    }

    private String removeNameComment(String substring) {
        if (!hasNameComment()) return substring;
        return substring.split("\\(")[0].trim();
    }

    private boolean hasLevel() {
        return name.contains("#");
    }

    public int getRoomX() {
        return room & 0x0F;
    }

    public int getRoomY() {
        return (room >> 4) & 0x0F;
    }

    public int getByteSwappedX() {
        return getByteSwapped(x);
    }

    public int getByteSwappedY() {
        return getByteSwapped(y);
    }

    private int getByteSwapped(int value) {
        return ((value >> 8) & 0xFF) + (value & 0xFF) * 256;
    }

    public int getTileX() {
        //не работает это выравнивание часто :(
        /*if (Math.abs(tileAlignedX - x) < 16) {
            return tileAlignedX;
        } else {*/
        return x;
        //}
    }

    public int getTileY() {
        return toTileY(y);
    }

    public static int toTileY(int y) {
        //int alignedY = Math.abs(tileAlignedY - y) < 16 ? tileAlignedY : y;
        //return (alignedY >> 8) * 0xC0 + (alignedY & 0xFF);
        return (y >> 8) * 0xC0 + (y & 0xFF);
    }

    public static int fromTileY(int tileY) {
        return (tileY / 0xC0) * 0x100 + (tileY % 0xC0);
    }

    @Override
    public String toString() {
        return "Geo{" +
                "planet=" + planet +//todo не используется а надо бы
                ", name='" + name + '\'' +//todo не используется а надо бы
                //", unused_400_X=" + unused_400_X +
                ", x=" + x +
                ", y=" + y +
                //", unused_403_Y=" + unused_403_Y +
                ", unknown_404=" + unknown_404 +
                ", unknown_407=" + unknown_407 +
                ", mapLayer=" + mapLayer +
                ", mapId=" + mapId +
                ", direction=" + direction +
                ", unknown_40B=" + unknown_40B +
                ", room=" + room +
                ", dungeon=" + dungeon +
                ", transport=" + transport +
                ", animation1=" + animation1 +
                ", animation2=" + animation2 +
                ", y2=" + tileAlignedY +
                ", x2=" + tileAlignedX +
                ", color=" + color +
                ", type=" + type +
                ", church=" + church +
                ", unknown_418_4FF=" + Arrays.toString(unknown_418_4FF) +
                '}';
    }

    public String getMapTextId() {
        return String.format("%02X%02X", mapLayer, mapId);
    }

    public String getDungeonTextId() {
        return String.format("%02X%02X%02X", mapLayer, mapId, dungeon);
    }

    public String getMapTitle() {
        if (color == 0) {
            String textId = getMapTextId();
            return Config.languageTable.getProperty(textId, textId);
        } else {
            String textId = getDungeonTextId();
            var candidates = Config.languageTable.entrySet().stream()
                    .filter(e -> e.getKey().toString().startsWith(textId))
                    .filter(e -> Math.abs(getByteSwapped(Integer.parseInt(e.getKey().toString().split("-")[1], 16)) - x) < 24)
                    .sorted(Comparator.comparing(e -> e.getValue().toString()))
                    .toList();

            if (candidates.size() > 1) {
                System.out.println("Candidates: " + candidates);
            }

            return candidates.isEmpty() ? textId : candidates.get(0).getValue().toString();
        }
    }
}
