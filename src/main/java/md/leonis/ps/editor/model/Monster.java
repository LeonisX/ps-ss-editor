package md.leonis.ps.editor.model;

import md.leonis.bin.Dump;
import md.leonis.extractor.utils.Config;
import org.apache.commons.lang3.StringUtils;

import java.util.Arrays;
import java.util.Map;

// https://gamefaqs.gamespot.com/sms/588116-phantasy-star/faqs/7567
public class Monster {

    private static final Map<Integer, String> spells = Map.of(
            0, "",
            1, "Rope",
            2, "Cure",
            3, "Help",
            4, "Fire",
            5, "Thunder",
            6, "Petrify",
            7, "Thunder-2"
    );

    //        v Name is the exact game name, don't blame me for the spellings.
    //        v HP is number of hit points.
    //        v ATP is attack points (max=255)
    //        v DFP is defence points (max 255).
    //        v Exp is experience gained per monster
    //        v Mes is number of Meseta gained per monster.
    //        v Num is the maximum number you can meet in any one battle.
    //        v Run is the chance of making a successful escape, high number is better max is 255.
    //        v Trp is the chance of the treasure chest being trapped, low number is less likely, max is 255.
    //        Win is ... what you will win.
    //        T is whether you can talk to them without magic.
    //        C is whether you can talk with magic (CHAT/TELE).
    //        R is whether you can ROPE them.
    //        P is whether you can PROTECT against them.
    //        M is a mystery column.
    //        Special is the special attack they can use.

    //.section "Enemy data" overwrite
    //; Structure:
    //; 8 bytes = name
    //; 8 bytes = ??? xc258       $c258     ; 8 bytes? ??? RAM re-used for enemy scenes as well as scrolling scenes?
    //; 1 byte = sprite tiles page
    //; 1 word = sprite tiles offset
    //; 1 byte = index into data8fdf for ???

    private String name;
    private int[] unk1 = new int[8]; // xc258       $c258     ; 8 bytes? ??? RAM re-used for enemy scenes as well as scrolling scenes?
    private int[] tilesAddress = new int[3];  // Tiles page + offset. 19 D0 A4 -> 0019:a4d0 TilesScorpion
    private int unk2; // index into data8fdf for ???
    private int maxParty;
    private int hp;
    private int attack;
    private int defence;
    private int loot;
    private int mesetas;
    private int experience;
    private int trapChance;
    private int runChance;
    private int spell;
    private boolean talk;
    private boolean telepathy;
    private boolean rope;
    private boolean protect;
    private boolean mystery;

    public Monster() {
    }

    public Monster(String name, int[] unk1, int[] tilesAddress, int unk2, int maxParty, int hp, int attack, int defence,
                   int loot, int mesetas, int experience, int trapChance, int runChance,
                   int spell, boolean talk, boolean telepathy, boolean rope, boolean protect, boolean mystery) {
        this.name = name;
        this.unk1 = unk1;
        this.tilesAddress = tilesAddress;
        this.unk2 = unk2;
        this.maxParty = maxParty;
        this.hp = hp;
        this.attack = attack;
        this.defence = defence;
        this.loot = loot;
        this.mesetas = mesetas;
        this.experience = experience;
        this.trapChance = trapChance;
        this.runChance = runChance;
        this.spell = spell;
        this.talk = talk;
        this.telepathy = telepathy;
        this.rope = rope;
        this.protect = protect;
        this.mystery = mystery;
    }

    public static Monster readFromRom(Dump romData) {
        Monster monster = new Monster();

        monster.setName(romData.readString(8).trim().replace("e", ""));

        romData.getBytes(monster.unk1);
        romData.getBytes(monster.tilesAddress);
        monster.setUnk2(romData.getByte());

        monster.setMaxParty(romData.getByte());
        monster.setHp(romData.getByte());
        monster.setAttack(romData.getByte());
        monster.setDefence(romData.getByte());
        monster.setLoot(romData.getByte());
        monster.setMesetas(romData.getWord());
        monster.setTrapChance(romData.getByte());
        monster.setExperience(romData.getWord());
        int flags = romData.getByte();
        monster.setRunChance(romData.getByte());

        //Spell	0-3???
        //M	3
        //P	4
        //R	5
        //C	6
        //T	7
        monster.setMystery((flags & 0b00010000) > 0);
        monster.setProtect((flags & 0b00100000) > 0);
        monster.setRope((flags & 0b00100000) > 0);
        monster.setTelepathy((flags & 0b01000000) > 0);
        monster.setTalk((flags & 0b10000000) > 0);

        monster.setSpell(flags & 0b00000111);

        return monster;
    }

    public String toCSV() {
        return name + ";" +
                hp + ";" +
                attack + ";" +
                defence + ";" +
                experience + ";" +
                mesetas + ";" +
                ((loot == 0) ? "" : Config.items.get(loot)) + ";" +
                maxParty + ";" +
                runChance + ";" +
                trapChance + ";" +
                //Integer.toBinaryString(flags & 0xFF) + ";" +

                (talk ? "y" : "") + ";" +
                (telepathy ? "y" : "") + ";" +
                (rope ? "y" : "") + ";" +
                (protect ? "y" : "") + ";" +
                (mystery ? "y" : "") + ";" +

                spells.get(spell) + ";" +

                arrayToHex(unk1) + ";" +
                arrayToHex(tilesAddress) + ";" +
                unk2;
    }

    //Name	HP	Attack	Defence	Exp	Mesetas	Loot	Max Party	Run Chance	Trap Chance	Talk	Telepathy	Rope	Protect	Mystery	Spell	    xc258	        Tiles Address	data8fdf
    //SWORM	8	13	    9	    2	3		        8	        255	        12			                    y	    y	        y		2A 25 05 0A 08 04 0C 2F 	0B DA 9C 	18
    //0     1   2       3       4   5       6       7           8           9           10      11          12      13          14   15            16                   17      18
    public static Monster fromCSV(String csv) {
        String[] chunks = csv.replace("\"", "").split(";");
        return new Monster(
                chunks[0],                  // name
                arrayFromHex(chunks[16]),   // unk1
                arrayFromHex(chunks[17]),   // tiles
                fromString(chunks[18]),     // unk2
                fromString(chunks[7]),      // maxParty,
                fromString(chunks[1]),      // hp,
                fromString(chunks[2]),      // attack,
                fromString(chunks[3]),      // defence,
                getLoot(chunks[6]),         // loot,
                fromString(chunks[5]),      // mesetas,
                fromString(chunks[4]),      // experience,
                fromString(chunks[9]),      // trapChance,
                fromString(chunks[8]),      // runChance,
                getSpell(chunks[15]),       // spell,
                toBoolean(chunks[10]),      // talk,
                toBoolean(chunks[11]),      // telepathy,
                toBoolean(chunks[12]),      // rope,
                toBoolean(chunks[13]),      // protect,
                toBoolean(chunks[14])       // mystery
        );
    }

    private static int getLoot(String loot) {
        int result = 0;

        for (int i = 0; i < md.leonis.ps.editor.utils.Config.items.size(); i++) {
            if (md.leonis.ps.editor.utils.Config.items.get(i).equals(loot)) {
                result = i;
            }
        }

        return  result;
    }

    private static int getSpell(String spell) {
        return spells.entrySet().stream().filter(e -> e.getValue().equals(spell)).map(Map.Entry::getKey).findFirst().orElse(0);
    }

    private static boolean toBoolean(String hex) {
        return StringUtils.isNotBlank(hex);
    }

    private static int fromString(String str) {
        return Integer.parseInt(str);
    }

    private static int fromHex(String hex) {
        return Integer.parseInt(hex, 16);
    }

    private static int[] arrayFromHex(String hex) {
        return Arrays.stream(hex.split(" ")).mapToInt(Monster::fromHex).toArray();
    }

    private String arrayToHex(int[] array) {
        StringBuilder sb = new StringBuilder();
        for (int value : array) {
            sb.append(String.format("%02X ", value));
        }
        return sb.toString();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int[] getUnk1() {
        return unk1;
    }

    public void setUnk1(int[] unk1) {
        this.unk1 = unk1;
    }

    public int[] getTilesAddress() {
        return tilesAddress;
    }

    public void setTilesAddress(int[] tilesAddress) {
        this.tilesAddress = tilesAddress;
    }

    public int getUnk2() {
        return unk2;
    }

    public void setUnk2(int unk2) {
        this.unk2 = unk2;
    }

    public int getMaxParty() {
        return maxParty;
    }

    public void setMaxParty(int maxParty) {
        this.maxParty = maxParty;
    }

    public int getHp() {
        return hp;
    }

    public void setHp(int hp) {
        this.hp = hp;
    }

    public int getAttack() {
        return attack;
    }

    public void setAttack(int attack) {
        this.attack = attack;
    }

    public int getDefence() {
        return defence;
    }

    public void setDefence(int defence) {
        this.defence = defence;
    }

    public int getLoot() {
        return loot;
    }

    public void setLoot(int loot) {
        this.loot = loot;
    }

    public int getMesetas() {
        return mesetas;
    }

    public void setMesetas(int mesetas) {
        this.mesetas = mesetas;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public int getTrapChance() {
        return trapChance;
    }

    public void setTrapChance(int trapChance) {
        this.trapChance = trapChance;
    }

    public int getRunChance() {
        return runChance;
    }

    public void setRunChance(int runChance) {
        this.runChance = runChance;
    }

    public int getSpell() {
        return spell;
    }

    public void setSpell(int spell) {
        this.spell = spell;
    }

    public boolean isTalk() {
        return talk;
    }

    public void setTalk(boolean talk) {
        this.talk = talk;
    }

    public boolean isTelepathy() {
        return telepathy;
    }

    public void setTelepathy(boolean telepathy) {
        this.telepathy = telepathy;
    }

    public boolean isRope() {
        return rope;
    }

    public void setRope(boolean rope) {
        this.rope = rope;
    }

    public boolean isProtect() {
        return protect;
    }

    public void setProtect(boolean protect) {
        this.protect = protect;
    }

    public boolean isMystery() {
        return mystery;
    }

    public void setMystery(boolean mystery) {
        this.mystery = mystery;
    }
}
