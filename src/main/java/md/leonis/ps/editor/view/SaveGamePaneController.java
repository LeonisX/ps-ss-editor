package md.leonis.ps.editor.view;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static md.leonis.ps.editor.utils.Config.currentSaveGame;

public class SaveGamePaneController {

    @FXML
    public TextField x;
    @FXML
    public TextField y;
    @FXML
    public TextField map;
    @FXML
    public ComboBox<String> transport;
    @FXML
    public TextField animation1;
    @FXML
    public TextField animation2;
    @FXML
    public TextField mesetas;
    @FXML
    public TextField dungeon;
    @FXML
    public TextField room;
    @FXML
    public ComboBox<String> direction;
    @FXML
    public TextField color;
    @FXML
    public TextField itemsCount;
    @FXML
    public TextField items;
    @FXML
    public TextField church;
    @FXML
    public TextField heroes;
    @FXML
    public TextArea bosses;
    @FXML
    public TextArea events;
    @FXML
    public TextArea chests;
    @FXML
    public VBox dungeonVBox;
    @FXML
    public VBox cityVBox;
    @FXML
    public ToggleGroup toggleGroup;
    @FXML
    public RadioButton dungeonRadioButton;
    @FXML
    public RadioButton cityRadioButton;
    @FXML
    public GridPane gridPane;
    public TextArea tt;

    private List<String> directionsList = new ArrayList<>(Arrays.asList("North", "East", "South", "West"));
    private List<String> transportList = new ArrayList<>(Arrays.asList("No", "Landrover", "Hovercraft", "Ice Digger"));
    private int[] transportIds = new int[]{0x00, 0x04, 0x08, 0x0C};

    ObservableList<String> observableDirectionsList = FXCollections.observableList(directionsList);
    ObservableList<String> observableTransportList = FXCollections.observableList(transportList);

    @FXML
    private void initialize() {
        //TODO pretty show current map

        cityVBox.managedProperty().bind(cityVBox.visibleProperty());
        dungeonVBox.managedProperty().bind(dungeonVBox.visibleProperty());


        x.setText(String.format("0x%04X", currentSaveGame.getGeo().getX()));
        y.setText(String.format("0x%04X", currentSaveGame.getGeo().getY()));
        map.setText(String.format("0x%04X", currentSaveGame.getGeo().getMap()));
        transport.setItems(observableTransportList);
        transport.getSelectionModel().select(currentSaveGame.getGeo().getTransport());
        animation1.setText(String.format("0x%02X", currentSaveGame.getGeo().getAnimation1()));
        animation2.setText(String.format("0x%02X", currentSaveGame.getGeo().getAnimation2()));

        mesetas.setText(String.valueOf(currentSaveGame.getMesetas()));
        //TODO update
        //companionsCount.setText(String.valueOf(currentSaveGame.getCompanionsCount()));
        itemsCount.setText(String.valueOf(currentSaveGame.getItemsCount()));
        items.setText(Arrays.toString(currentSaveGame.getItems()));
        church.setText(String.format("0x%02X", currentSaveGame.getGeo().getChurch()));

        dungeon.setText(String.format("0x%02X", currentSaveGame.getGeo().getDungeon()));
        room.setText(String.format("0x%02X", currentSaveGame.getGeo().getRoom()));

        direction.setItems(observableDirectionsList);
        direction.getSelectionModel().select(currentSaveGame.getGeo().getDirection());
        color.setText(String.format("0x%02X", currentSaveGame.getGeo().getColor()));

        if (currentSaveGame.getGeo().getType() == 0x0B) {
            cityRadioButton.setSelected(true);
            cityVBox.setVisible(true);
            //dungeonVBox.setVisible(false);
        } else {
            dungeonRadioButton.setSelected(true);
            //cityVBox.setVisible(false);
            dungeonVBox.setVisible(true);
        }

        tt.setText("X" + x.getText() + " Y" + y.getText() + " M" + map.getText() + " T" + currentSaveGame.getGeo().getTransport()
                + " D" + dungeon.getText() + " R" + room.getText() + " Dr" + currentSaveGame.getGeo().getDirection() + " C" + color.getText());


        heroes.setText(Arrays.toString(currentSaveGame.getHeroes()));
        bosses.setText(Arrays.toString(currentSaveGame.getBosses()));
        events.setText(Arrays.toString(currentSaveGame.getEvents()));
        chests.setText(Arrays.toString(currentSaveGame.getChests()));
    }

}