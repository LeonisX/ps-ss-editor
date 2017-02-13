package md.leonis.ps.editor.view;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.image.ImageView;
import md.leonis.ps.editor.utils.Config;
import md.leonis.ps.editor.utils.JavaFxUtils;

import static md.leonis.ps.editor.utils.Config.currentHero;

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
    public Label nextLevel;
    @FXML
    public ComboBox<String> weapon;
    @FXML
    public ComboBox<String> armor;
    @FXML
    public ComboBox<String> shield;
    @FXML
    public TextField attack;
    @FXML
    public TextField defense;
    @FXML
    public ComboBox<Integer> level;
    @FXML
    public Slider combatSpells;
    @FXML
    public Slider curativeSpells;

    @FXML
    public ImageView image;
    @FXML
    public ImageView icon;

    private ObservableList<String> observableWeaponsList = FXCollections.observableList(Config.weaponNames);
    private ObservableList<String> observableArmorsList = FXCollections.observableList(Config.armorNames);
    private ObservableList<String> observableShieldsList = FXCollections.observableList(Config.shieldNames);

    //TODO
    //TODO - dump all levels from ROM - we need this!!!!!!!!!!!!
    @FXML
    private void initialize() {
        name.setText(currentHero.getName());
        for (int i = 1; i <= 30; i++) {
            level.getItems().add(i);
        }
        level.getSelectionModel().select(currentHero.getLevel() - 1);
        weapon.setItems(observableWeaponsList);
        armor.setItems(observableArmorsList);
        shield.setItems(observableShieldsList);
        // state - we don't need this for save state
        level.setOnAction(this::levelAction);
        weapon.setOnAction(this::weaponAction);
        armor.setOnAction(this::armorAction);
        shield.setOnAction(this::shieldAction);
        update();
    }

    private void update() {
        hp.setText(Integer.toString(currentHero.getHp()));
        mp.setText(Integer.toString(currentHero.getMp()));
        experience.setText(Integer.toString(currentHero.getExperience()));
        if (currentHero.getLevel() > 30) {
            currentHero.setLevel(30);
        }
        experience.setText(Integer.toString(currentHero.getExperience()));
        //TODO nextLevel
        maxHp.setText(Integer.toString(currentHero.getMaxHp()));
        maxMp.setText(Integer.toString(currentHero.getMaxMp()));

        attack.setText(Integer.toString(currentHero.getAttack()));
        defense.setText(Integer.toString(currentHero.getDefense()));

        //TODO customize 0 .. max
        combatSpells.setValue(currentHero.getCombatSpells());
        curativeSpells.setValue(currentHero.getCurativeSpells());
    }

    public void okButtonClick() {
        //TODO checks, error handler
        currentHero.setHp(Integer.parseInt(hp.getText()));
        currentHero.setMp(Integer.parseInt(mp.getText()));
        currentHero.setMaxHp(Integer.parseInt(maxHp.getText()));
        currentHero.setMaxMp(Integer.parseInt(maxMp.getText()));

        if (currentHero.getHp() == 0) currentHero.setAlive(false);

        currentHero.setExperience(Integer.parseInt(experience.getText()));

        currentHero.setAttack(Integer.parseInt(attack.getText()));
        currentHero.setDefense(Integer.parseInt(defense.getText()));

        currentHero.setCombatSpells((int) combatSpells.getValue());
        currentHero.setCurativeSpells((int) curativeSpells.getValue());

        currentHero.update();

        JavaFxUtils.showPane("SaveGamePane.fxml");
    }

    public void weaponAction(Event event) {
    }

    public void armorAction(Event event) {
    }

    public void shieldAction(Event event) {
    }

    public void levelAction(Event event) {
        currentHero.setLevel(level.getSelectionModel().getSelectedIndex() + 1);
        //TODO update all datas conform level.
        update();
    }

    public void allowButtonClick(ActionEvent actionEvent) {
    }

    public void dontAllowButtonClick(ActionEvent actionEvent) {
    }

    public void dismissButtonClick(ActionEvent actionEvent) {
    }
}
