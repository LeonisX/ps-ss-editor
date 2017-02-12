package md.leonis.ps.editor.view;

import javafx.fxml.FXML;

import static md.leonis.ps.editor.utils.Config.currentSaveGame;

public class HeroGamePaneController {

    @FXML
    private void initialize() {

        //TODO
        private String name;
        private boolean isAlive;    // 0x500. 1 byte
        private int hp;             // 0x501. 1 byte
        private int mp;             // 0x502. 1 byte
        private int experience;     // 0x503-0x504. 2 bytes
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

    }

}
