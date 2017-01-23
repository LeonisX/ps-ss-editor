package md.leonis.ps.editor.model;


import md.leonis.ps.editor.utils.Config;

public class Hero {

    private String name;
    private boolean isAlive;    // 0x500. 1 byte
    private int hp;             // 0x501. 1 byte
    private int mp;             // 0x502. 1 byte
    private int experience;     // 0x50330x504. 2 bytes
    private int level;          // 0x505. max = 1E (30)
    private int maxHp;          // 0x506. 1 byte
    private int maxMp;          // 0x507. 1 byte
    private int attack;         // 0x508. 1 byte
    private int defense;        // 0x509. 1 byte
    private int weapon;         // 0x50A. 1 byte
    private int armor;          // 0x50B. 1 byte
    private int shield;         // 0x50C. 1 byte
    private int state;          // 0x50D. 1 byte //TODO research in RAM. Trapped,... ???
    private int combatSpells;   // 0x50E. 1 byte
    private int curativeSpells; // 0x50F. 1 byte

//TODO research for all heroes start equipment

    //TODO read from romData


    public static Hero readFromRom(Rom romData, int index) {
        return new Hero(Config.names[index], romData.getBoolean(), romData.getByte(), romData.getByte(), romData.getShort() ,romData.getByte(),
                romData.getByte(), romData.getByte(),romData.getByte(), romData.getByte(), romData.getByte(), romData.getByte(), romData.getByte(),
                romData.getByte(), romData.getByte(), romData.getByte());
    }

    public Hero(String name, boolean isAlive, int hp, int mp, int experience, int level, int maxHp, int maxMp, int attack, int defense, int weapon, int armor, int shield, int state, int combatSpells, int curativeSpells) {
        this.name = name;
        this.isAlive = isAlive;
        this.hp = hp;
        this.mp = mp;
        this.experience = experience;
        this.level = level;
        this.maxHp = maxHp;
        this.maxMp = maxMp;
        this.attack = attack;
        this.defense = defense;
        this.weapon = weapon;
        this.armor = armor;
        this.shield = shield;
        this.state = state;
        this.combatSpells = combatSpells;
        this.curativeSpells = curativeSpells;
    }

    private Hero alisaInitial() {
        return new Hero(Config.names[0], true, 0x10, 0x00, 0x00 ,0x01, 0x10,
                0x00,0x0C, 0x0D, 0x02, 0x10, 0x00, 0x00,
                0x00, 0x00);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isAlive() {
        return isAlive;
    }

    public void setAlive(boolean alive) {
        isAlive = alive;
    }

    public int getHp() {
        return hp;
    }

    public void setHp(int hp) {
        this.hp = hp;
    }

    public int getMp() {
        return mp;
    }

    public void setMp(int mp) {
        this.mp = mp;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public int getMaxHp() {
        return maxHp;
    }

    public void setMaxHp(int maxHp) {
        this.maxHp = maxHp;
    }

    public int getMaxMp() {
        return maxMp;
    }

    public void setMaxMp(int maxMp) {
        this.maxMp = maxMp;
    }

    public int getAttack() {
        return attack;
    }

    public void setAttack(int attack) {
        this.attack = attack;
    }

    public int getDefense() {
        return defense;
    }

    public void setDefense(int defense) {
        this.defense = defense;
    }

    public int getWeapon() {
        return weapon;
    }

    public void setWeapon(int weapon) {
        this.weapon = weapon;
    }

    public int getArmor() {
        return armor;
    }

    public void setArmor(int armor) {
        this.armor = armor;
    }

    public int getShield() {
        return shield;
    }

    public void setShield(int shield) {
        this.shield = shield;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getCombatSpells() {
        return combatSpells;
    }

    public void setCombatSpells(int combatSpells) {
        this.combatSpells = combatSpells;
    }

    public int getCurativeSpells() {
        return curativeSpells;
    }

    public void setCurativeSpells(int curativeSpells) {
        this.curativeSpells = curativeSpells;
    }

    @Override
    public String toString() {
        return "Hero{" +
                "name='" + name + '\'' +
                ", isAlive=" + isAlive +
                ", hp=" + hp +
                ", mp=" + mp +
                ", experience=" + experience +
                ", level=" + level +
                ", maxHp=" + maxHp +
                ", maxMp=" + maxMp +
                ", attack=" + attack +
                ", defense=" + defense +
                ", weapon=" + weapon +
                ", armor=" + armor +
                ", shield=" + shield +
                ", state=" + state +
                ", combatSpells=" + combatSpells +
                ", curativeSpells=" + curativeSpells +
                '}';
    }
}
