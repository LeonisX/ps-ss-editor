package md.leonis.ps.editor.view;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.image.ImageView;

import static md.leonis.ps.editor.utils.Config.currentHero;
import static md.leonis.ps.editor.utils.Config.currentSaveGame;

public class HeroGamePaneController {

    @FXML
    public Button okButton;
    @FXML
    public Button dismissButton;

    @FXML
    public Button allowButton;
    @FXML
    public Button dontAllowButton;

    @FXML
    public Label name;
    @FXML
    public TextField hp;
    @FXML
    public TextField maxHp;
    @FXML
    public TextField mp;
    @FXML
    public TextField maxMp;
    @FXML
    public TextField experience;
    @FXML
    public ComboBox weapon;
    @FXML
    public ComboBox armor;
    @FXML
    public ComboBox shield;
    @FXML
    public TextField attack;
    @FXML
    public TextField defense;
    @FXML
    public ComboBox level;
    @FXML
    public Slider combatSpells;
    @FXML
    public Slider curativeSpells;


    @FXML
    public ImageView image;
    @FXML
    public ImageView icon;

    @FXML
    private void initialize() {
        name.setText(currentHero.getName());
        hp.setText(Integer.toString(currentHero.getHp()));
        mp.setText(Integer.toString(currentHero.getMp()));
        experience.setText(Integer.toString(currentHero.getExperience()));
        hp.setText(Integer.toString(currentHero.getHp()));
        hp.setText(Integer.toString(currentHero.getHp()));
        if (currentHero.getLevel() > 30) {
            currentHero.setLevel(30);
        }
        level.getSelectionModel().select(currentHero.getLevel());
        experience.setText(Integer.toString(currentHero.getExperience()));
        maxHp.setText(Integer.toString(currentHero.getMaxHp()));
        maxMp.setText(Integer.toString(currentHero.getMaxMp()));

        attack.setText(Integer.toString(currentHero.getAttack()));
        defense.setText(Integer.toString(currentHero.getDefense()));

        //TODO customize 0 .. max
        combatSpells.setValue(currentHero.getCombatSpells());
        curativeSpells.setValue(currentHero.getCurativeSpells());

        //TODO fill lists
        //private int weapon;         // 0x50A. 1 byte
        //private int armor;          // 0x50B. 1 byte
        //private int shield;         // 0x50C. 1 byte
        // state - we don't need this for save state
    }

    public void okButtonClick(ActionEvent actionEvent) {
    }

    public void weaponAction(ActionEvent actionEvent) {
    }

    public void armorAction(ActionEvent actionEvent) {
    }

    public void shieldAction(ActionEvent actionEvent) {
    }

    public void levelAction(ActionEvent actionEvent) {
    }

    public void allowButtonClick(ActionEvent actionEvent) {
    }

    public void dontAllowButtonClick(ActionEvent actionEvent) {
    }

    public void dismissButtonClick(ActionEvent actionEvent) {
    }
}
