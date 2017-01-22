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
}
