package md.leonis.extractor.model;

import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import md.leonis.ps.editor.model.Hero;

import static md.leonis.ps.editor.utils.Config.currentSaveGame;

public class HeroNode {

    private BorderPane borderPane;
    private HBox leftHBox;
    private HBox rightHBox;
    private Label nameLabel;
    private Label textLabel;
    private Button customizeButton;
    private Button healButton;
    private Button reviveButton;
    private Button hireButton;

    public HeroNode(int index) {
        Hero hero = currentSaveGame.getHeroes()[index];
        nameLabel = new Label(hero.getName());
        nameLabel.setStyle("-fx-font-weight: bold;");
        nameLabel.setPrefWidth(70);
        textLabel = new Label();
        healButton = new Button("heal");
        reviveButton = new Button("revive");
        hireButton = new Button("hire");
        customizeButton = new Button("customize");

        healButton.managedProperty().bind(healButton.visibleProperty());
        reviveButton.managedProperty().bind(reviveButton.visibleProperty());
        hireButton.managedProperty().bind(hireButton.visibleProperty());
        customizeButton.managedProperty().bind(customizeButton.visibleProperty());

        update(index);
    }

    public void update(int index) {
        Hero hero = currentSaveGame.getHeroes()[index];
        boolean exist = hero.getLevel() > 0;
        if (exist) {
            textLabel.setText("level: " + hero.getLevel() + "; health: injured");
        } else {
            textLabel.setText("somewhere far away...");
        }
        healButton.setVisible((hero.getMaxHp() > hero.getHp() || hero.getMaxMp() > hero.getMp()) && exist);
        reviveButton.setVisible(!hero.isAlive() && exist);
        hireButton.setVisible(!exist);
        customizeButton.setVisible(exist);
    }

    public BorderPane getBorderPane() {
        return borderPane;
    }

    public void setBorderPane(BorderPane borderPane) {
        this.borderPane = borderPane;
    }

    public HBox getLeftHBox() {
        return leftHBox;
    }

    public void setLeftHBox(HBox leftHBox) {
        this.leftHBox = leftHBox;
    }

    public HBox getRightHBox() {
        return rightHBox;
    }

    public void setRightHBox(HBox rightHBox) {
        this.rightHBox = rightHBox;
    }

    public Label getNameLabel() {
        return nameLabel;
    }

    public void setNameLabel(Label nameLabel) {
        this.nameLabel = nameLabel;
    }

    public Label getTextLabel() {
        return textLabel;
    }

    public void setTextLabel(Label textLabel) {
        this.textLabel = textLabel;
    }

    public Button getHealButton() {
        return healButton;
    }

    public void setHealButton(Button healButton) {
        this.healButton = healButton;
    }

    public Button getReviveButton() {
        return reviveButton;
    }

    public void setReviveButton(Button reviveButton) {
        this.reviveButton = reviveButton;
    }

    public Button getHireButton() {
        return hireButton;
    }

    public void setHireButton(Button hireButton) {
        this.hireButton = hireButton;
    }

    public Button getCustomizeButton() {
        return customizeButton;
    }

    public void setCustomizeButton(Button customizeButton) {
        this.customizeButton = customizeButton;
    }
}
