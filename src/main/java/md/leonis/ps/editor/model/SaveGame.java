package md.leonis.ps.editor.model;

import md.leonis.bin.ByteOrder;
import md.leonis.bin.Dump;

import java.util.Arrays;

import static md.leonis.ps.editor.model.SaveState.SAVE_GAME_SIZE;

public class SaveGame {

    private String name;
    private SaveGameStatus status = SaveGameStatus.EMPTY;

    private Geo geo; //0x400-0x4FF

    private Hero[] heroes = new Hero[4]; // 0x500, 0x510, 0x520, 0x530 (0x10 bytes): Alisa, Myau, Odin, Noah
    private Hero[] monsters = new Hero[8]; // 0x540-0x5BF  Last monsters in battle; up to 8 monsters x 16 bytes. Need to ignore, 00.
    private int[] items = new int[24]; // 0x5C0-0x5D7  Items, max 24.
    private int[] unknown_5D8_5DF = new int[8]; // 0x5D8-0x5DF  ?????????????   8 bytes
    private int mesetas;    // 0x5E0-0x5E1  Mesetas count
    private int itemsCount; // 0x5E2        Items count
    private int[] unknown_5E3_5EF = new int[13]; // 0x5E3-0x5EF  ?????????????   13 bytes
    private int companionsCount; // 0x5F0        Companions count (max 3)
    private int[] unknown_5F1_5FF = new int[15]; // 0x5F1-0x5FF  ?????????????   15 bytes

    private int[] events = new int[0x100]; // 0x600-0x618  Important events. Examples: save Luveno, Odin, killed Dr Mad, Lasiec. Often 00 -> 01
    private int[] unknown_619_6EF = new int[215]; // 0x619-0x6FF  ?????????????   215 bytes
    private int[] chests = new int[0x0C0]; // 0x700-0x794  Open chests. 00 -> FF
    private int[] unknown_795_7C0 = new int[44]; // 0x795-0x7C0  ?????????????   44 bytes
    private int[] bosses = new int[0x040];// 0x7C1-0x7D8  defeated bosses. 00 -> FF
    private int[] unknown_7D9_7FF = new int[39]; // 0x7D9-0x7FF  ?????????????   39 bytes
    // Other data: zeroes

    //Если сохраниться на старте:
    //Game #0
    //Name:  -> GAME
    //
    //Geo #0
    //X: 00 00 -> 06 10
    //Y: 00 00 -> 01 00
    //MapLayer: 0 -> 4
    //MapId: 0 -> 4
    //X2: 00 00 -> 06 10
    //Y2: 00 00 -> 01 00
    //Type: 0 -> 13
    //
    //Hero #0
    //IsAlive: false -> true
    //Level: 0 -> 1
    //HP: 0 of 0 -> 16 of 16
    //Attack: 0 -> 12
    //Defense: 0 -> 13
    //Weapon: 0 -> 2
    //Armor: 0 -> 16


    public void readFromRom(Dump romData, int offset) {
        romData.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        geo = new Geo();
        geo.readFromRom(romData, offset);
        romData.setOffset(offset);

        //read heroes
        romData.moveToAddress(0x100); // 0x500
        for (int i = 0; i < 4; i++) {
            heroes[i] = Hero.readFromRom(romData, i);
        }

        // 0x540
        for (int i = 0; i < 8; i++) {
            monsters[i] = Hero.readFromRom(romData, i);
        }

        mesetas = romData.getWord(0x1E0);

        romData.setByteOrder(ByteOrder.BIG_ENDIAN);

        itemsCount = romData.getByte(0x1E2);
        for (int i = 0; i < itemsCount; i++) {
            items[i] = romData.getByte(0x1C0 + i);
        }

        companionsCount = romData.getByte(0x1F0);

        romData.getBytes(0x200, events); // 0x600
        romData.getBytes(0x300, chests); // 0x700
        romData.getBytes(0x3C1, bosses); // 0x7C1

        romData.getBytes(0x1D8, unknown_5D8_5DF); // 0x5D8
        romData.getBytes(0x1E3, unknown_5E3_5EF); // 0x5E3
        romData.getBytes(0x1F1, unknown_5F1_5FF); // 0x5F1

        romData.getBytes(0x219, unknown_619_6EF); // 0x619
        romData.getBytes(0x395, unknown_795_7C0); // 0x795
        romData.getBytes(0x3D9, unknown_7D9_7FF); // 0x7D9
    }

    //todo unknown
    public void writeToRom(Dump romData, int offset) {
        romData.setOffset(offset);
        romData.erase(0, SAVE_GAME_SIZE);
        romData.moveToAddress(0);
        // experience, mesetas - Little Endian;
        // x, y - поменять байты местами, так как при чтении тоже меняется;
        romData.setByteOrder(ByteOrder.BIG_ENDIAN);
        geo.writeToRom(romData);
        romData.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        //write heroes
        romData.moveToAddress(0x100); // 0x500
        for (int i = 0; i < 4; i++) {
            heroes[i].writeToRom(romData);
        }

        // 0x540
        for (int i = 0; i < 8; i++) {
            monsters[i].writeToRom(romData);
        }

        romData.setWord(0x1E0, mesetas);

        romData.setByte(0x1E2, itemsCount);
        for (int i = 0; i < itemsCount; i++) {
            romData.setByte(0x1C0 + i, items[i]);
        }
        romData.setByte(0x1F0, companionsCount);

        romData.moveToAddress(0x200); // 0x600
        for (int event : events) {
            romData.setByte(event);
        }
        for (int chest : chests) {
            romData.setByte(chest);
        }
        for (int boss : bosses) {
            romData.setByte(boss);
        }
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

    public Geo getGeo() {
        return geo;
    }

    public void setGeo(Geo geo) {
        this.geo = geo;
    }

    public Hero[] getHeroes() {
        return heroes;
    }

    public void setHeroes(Hero[] heroes) {
        this.heroes = heroes;
    }

    public Hero[] getMonsters() {
        return monsters;
    }

    public void setMonsters(Hero[] monsters) {
        this.monsters = monsters;
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

    public int[] getEvents() {
        return events;
    }

    public void setEvents(int[] events) {
        this.events = events;
    }

    public int[] getChests() {
        return chests;
    }

    public void setChests(int[] chests) {
        this.chests = chests;
    }

    public int[] getBosses() {
        return bosses;
    }

    public void setBosses(int[] bosses) {
        this.bosses = bosses;
    }

    public int[] getUnknown_5D8_5DF() {
        return unknown_5D8_5DF;
    }

    public void setUnknown_5D8_5DF(int[] unknown_5D8_5DF) {
        this.unknown_5D8_5DF = unknown_5D8_5DF;
    }

    public int[] getUnknown_5E3_5EF() {
        return unknown_5E3_5EF;
    }

    public void setUnknown_5E3_5EF(int[] unknown_5E3_5EF) {
        this.unknown_5E3_5EF = unknown_5E3_5EF;
    }

    public int[] getUnknown_5F1_5FF() {
        return unknown_5F1_5FF;
    }

    public void setUnknown_5F1_5FF(int[] unknown_5F1_5FF) {
        this.unknown_5F1_5FF = unknown_5F1_5FF;
    }

    public int[] getUnknown_619_6EF() {
        return unknown_619_6EF;
    }

    public void setUnknown_619_6EF(int[] unknown_619_6EF) {
        this.unknown_619_6EF = unknown_619_6EF;
    }

    public int[] getUnknown_795_7C0() {
        return unknown_795_7C0;
    }

    public void setUnknown_795_7C0(int[] unknown_795_7C0) {
        this.unknown_795_7C0 = unknown_795_7C0;
    }

    public int[] getUnknown_7D9_7FF() {
        return unknown_7D9_7FF;
    }

    public void setUnknown_7D9_7FF(int[] unknown_7D9_7FF) {
        this.unknown_7D9_7FF = unknown_7D9_7FF;
    }

    @Override
    public String toString() {
        return "SaveGame{" +
                "name='" + name + '\'' +
                ", status=" + status +
                ", geo=" + geo +
                ", heroes=" + Arrays.toString(heroes) +
                ", monsters=" + Arrays.toString(monsters) +
                ", items=" + Arrays.toString(items) +
                ", mesetas=" + mesetas +
                ", itemsCount=" + itemsCount +
                ", companionsCount=" + companionsCount +
                ", events=" + Arrays.toString(events) +
                ", chests=" + Arrays.toString(chests) +
                ", bosses=" + Arrays.toString(bosses) +
                ", unknown_5D8_5DF=" + Arrays.toString(unknown_5D8_5DF) +
                ", unknown_5E3_5EF=" + Arrays.toString(unknown_5E3_5EF) +
                ", unknown_5F1_5FF=" + Arrays.toString(unknown_5F1_5FF) +
                ", unknown_5D8_5DF=" + Arrays.toString(unknown_619_6EF) +
                ", unknown_5E3_5EF=" + Arrays.toString(unknown_795_7C0) +
                ", unknown_5F1_5FF=" + Arrays.toString(unknown_7D9_7FF) +
                '}';
    }
}
