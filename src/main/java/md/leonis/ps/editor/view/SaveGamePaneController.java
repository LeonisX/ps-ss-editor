package md.leonis.ps.editor.view;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.layout.FlowPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Pane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.util.StringConverter;
import md.leonis.ps.editor.model.Geo;
import md.leonis.ps.editor.utils.Config;
import md.leonis.ps.editor.utils.JavaFxUtils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

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
    @FXML
    public Slider colorSlider;
    @FXML
    public Pane colorPane1;
    @FXML
    public Pane colorPane2;
    @FXML
    public ComboBox<String> geoComboBox;
    @FXML
    public FlowPane allItemsPane;
    @FXML
    public FlowPane itemsPane;
    @FXML
    public VBox itemsVBox;

    private Button plusItemButton;

    private Font font;

    private List<String> directionsList = new ArrayList<>(Arrays.asList("North", "East", "South", "West"));
    private List<String> transportList = new ArrayList<>(Arrays.asList("No", "Landrover", "Hovercraft", "Ice Digger"));
    private int[] transportIds = new int[]{0x00, 0x04, 0x08, 0x0C};

    ObservableList<String> observableDirectionsList = FXCollections.observableList(directionsList);
    ObservableList<String> observableTransportList = FXCollections.observableList(transportList);

    ObservableList<String> observableGeosList = FXCollections.observableList(Config.geos.stream().map(Geo::getName).collect(Collectors.toList()));

    @FXML
    private void initialize() {
        //TODO pretty show current map

        geoComboBox.setItems(observableGeosList);

        //System.out.println(String.format("%02X %04X", currentSaveGame.getGeo().getDungeon(), currentSaveGame.getGeo().getMap()));
        // TODO Geo - equals()
        for (int i = 0; i < Config.geos.size(); i++) {
            System.out.println(String.format("%02X %04X", Config.geos.get(i).getDungeon() , Config.geos.get(i).getMap()));
            if ((Config.geos.get(i).getDungeon() == currentSaveGame.getGeo().getDungeon())
                    & (Config.geos.get(i).getMap() == currentSaveGame.getGeo().getMap())) {
                geoComboBox.getSelectionModel().select(i);
                System.out.println(i);
                break;
            }
        }

        plusItemButton = new Button("+");
        plusItemButton.setOnAction(e -> addItemsButtonClick());

        plusItemButton.managedProperty().bind(plusItemButton.visibleProperty());
        allItemsPane.managedProperty().bind(allItemsPane.visibleProperty());

        allItemsPane.setVisible(false);
        //itemsPane.setVisible(true);

        font = plusItemButton.getFont();
        System.out.println(font);
        for (int i = 0; i < 64; i++) {
            Button button = new Button(Config.getItemName(i + 1));
            button.setUserData(i + 1);
            //button.setMinWidth(120);
            button.setStyle("-fx-font: " + (font.getSize() - 2) + " " + font.getFamily());
            button.setOnAction(this::addItem);
            allItemsPane.getChildren().add(button);
        }

        Button button = new Button("OK");
        button.setOnAction(e -> okAddItemsButtonClick());
        button.setStyle("-fx-font: " + (font.getSize() - 2) + " " + font.getFamily());
        allItemsPane.getChildren().add(button);


        colorSlider.setLabelFormatter(new StringConverter<Double>() {
            @Override
            public String toString(Double object) {
                return object * 5 + "'";
            }

            @Override
            public Double fromString(String string) {
                return null;
            }
        });
        colorPane1.setStyle("-fx-background-color: #00FFFF");
        colorPane2.setStyle("-fx-background-color: #000000");

        cityVBox.managedProperty().bind(cityVBox.visibleProperty());
        dungeonVBox.managedProperty().bind(dungeonVBox.visibleProperty());



        updateControls();
    }


    private void updateControls() {
        System.out.println();


        x.setText(String.format("0x%04X", currentSaveGame.getGeo().getX()));
        y.setText(String.format("0x%04X", currentSaveGame.getGeo().getY()));
        map.setText(String.format("0x%04X", currentSaveGame.getGeo().getMap()));
        transport.setItems(observableTransportList);
        for (int i = 0; i < transportIds.length; i++) {
            if (transportIds[i] == currentSaveGame.getGeo().getTransport()) {
                transport.getSelectionModel().select(i);
                break;
            }
        }
        animation1.setText(String.format("0x%02X", currentSaveGame.getGeo().getAnimation1()));
        animation2.setText(String.format("0x%02X", currentSaveGame.getGeo().getAnimation2()));

        mesetas.setText(String.valueOf(currentSaveGame.getMesetas()));
        //TODO update
        //companionsCount.setText(String.valueOf(currentSaveGame.getCompanionsCount()));
        //itemsCount.setText(String.valueOf(currentSaveGame.getItemsCount()));


        //items.setText(Arrays.toString(currentSaveGame.getItems()));

        itemsPane.getChildren().clear();
        for (int i = 0; i < currentSaveGame.getItemsCount(); i++) {
            Button button = new Button(Config.getItemName(currentSaveGame.getItems()[i]));
            button.setUserData(i);
            //button.setMinWidth(120);
            button.setOnAction(this::deleteItem);
            itemsPane.getChildren().add(button);
        }
        plusItemButton.setVisible(currentSaveGame.getItemsCount() != currentSaveGame.getItems().length
        && !allItemsPane.isVisible());
        itemsPane.getChildren().add(plusItemButton);

        //TODO combobox
        church.setText(String.format("0x%02X", currentSaveGame.getGeo().getChurch()));

        dungeon.setText(String.format("0x%02X", currentSaveGame.getGeo().getDungeon()));
        room.setText(String.format("0x%02X", currentSaveGame.getGeo().getRoom()));

        direction.setItems(observableDirectionsList);
        direction.getSelectionModel().select(currentSaveGame.getGeo().getDirection());
        //color.setText(String.format("0x%02X", currentSaveGame.getGeo().getColor()));

        if (currentSaveGame.getGeo().getType() == 0x0B) {
            cityRadioButton.setSelected(true);
            cityVBox.setVisible(true);
            //dungeonVBox.setVisible(false);
        } else {
            dungeonRadioButton.setSelected(true);
            //cityVBox.setVisible(false);
            dungeonVBox.setVisible(true);
        }

/*
        tt.setText("X" + x.getText() + " Y" + y.getText() + " M" + map.getText() + " T" + currentSaveGame.getGeo().getTransport()
                + " D" + dungeon.getText() + " R" + room.getText() + " Dr" + currentSaveGame.getGeo().getDirection() + " C" + color.getText());
*/


        heroes.setText(Arrays.toString(currentSaveGame.getHeroes()));
        bosses.setText(Arrays.toString(currentSaveGame.getBosses()));
        events.setText(Arrays.toString(currentSaveGame.getEvents()));
        chests.setText(Arrays.toString(currentSaveGame.getChests()));
    }

    public void geoComboBoxAction() {
        int index = geoComboBox.getSelectionModel().getSelectedIndex();
        Geo srcGeo = Config.geos.get(index);
        srcGeo.copyDataTo(currentSaveGame.getGeo());
        updateControls();
    }

    public void okButtonClick() {
        currentSaveGame.setMesetas(Integer.parseInt(mesetas.getText()));
        currentSaveGame.getGeo().setX(Integer.parseInt(x.getText()));
        currentSaveGame.getGeo().setY(Integer.parseInt(y.getText()));
        Config.saveState.updateDump();
        JavaFxUtils.showPane("SecondaryPane.fxml");
    }

    public void cancelButtonClick() {
        JavaFxUtils.showPane("SecondaryPane.fxml");
    }


    public void addItem(ActionEvent actionEvent) {
        if (currentSaveGame.getItemsCount() < currentSaveGame.getItems().length) {
            Button button = (Button) actionEvent.getSource();
            currentSaveGame.getItems()[currentSaveGame.getItemsCount()] = (int) button.getUserData();
            currentSaveGame.setItemsCount(currentSaveGame.getItemsCount() + 1);
            updateControls();
        }
    }


    private void deleteItem(ActionEvent actionEvent) {
        Button button = (Button) actionEvent.getSource();
        int index = (int) button.getUserData();
        System.out.println(index);
        currentSaveGame.getItems()[index] = 0;
        System.arraycopy(currentSaveGame.getItems(), index + 1, currentSaveGame.getItems(),
                index, currentSaveGame.getItems().length - 1 - index);
        currentSaveGame.setItemsCount(currentSaveGame.getItemsCount() - 1);
        updateControls();
    }


    public void addItemsButtonClick() {
        allItemsPane.setVisible(true);
        plusItemButton.setVisible(false);
    }

    public void okAddItemsButtonClick() {
        allItemsPane.setVisible(false);
        plusItemButton.setVisible(true);
    }

    public void directionChange() {
        currentSaveGame.getGeo().setDirection(direction.getSelectionModel().getSelectedIndex());
    }

    public void transportChange() {
        currentSaveGame.getGeo().setTransport(transportIds[transport.getSelectionModel().getSelectedIndex()]);
    }
}
