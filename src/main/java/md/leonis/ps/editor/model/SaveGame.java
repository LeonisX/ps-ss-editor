package md.leonis.ps.editor.model;


import md.leonis.bin.Dump;

import java.util.Arrays;

public class SaveGame {

    private String name;
    private SaveGameStatus status = SaveGameStatus.EMPTY;

    private Geo geo; //0x400-0x4FF

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
        geo = new Geo();
        geo.readFromRom(romData, offset);
        romData.setOffset(offset);
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

    @Override
    public String toString() {
        return "SaveGame{" +
                "name='" + name + '\'' +
                ", status=" + status +
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
