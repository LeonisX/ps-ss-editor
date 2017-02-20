package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import md.leonis.bin.ByteOrder;
import md.leonis.bin.Dump;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.extractor.utils.*;
import md.leonis.ps.editor.model.Geo;
import md.leonis.ps.editor.model.Level;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import static md.leonis.extractor.utils.Config.dump;
import static md.leonis.extractor.utils.Config.resourcePath;


public class MainStageController {

    @FXML
    private void initialize() {

    }

    public void dumpDungeonMapsClick() {
        DungeonMap[] maps = new DungeonMap[0x3D]; //3D
        dump.moveTo(0x3DF6E);
        for (int i = 0; i < maps.length; i++) {
            maps[i] = new DungeonMap(dump);
        }
        Path out = Paths.get("src/main/resources/dungeons.properties");
        //Don't uncomment - may corrupt current data
/*        try {
            Files.write(out,
                    IntStream.range(0, maps.length).mapToObj(i -> maps[i].toProperty(i))
                            .collect(Collectors.toList()), Charset.defaultCharset());
        } catch (IOException e) {
            e.printStackTrace();
        }*/
        JavaFxUtils.showAlert("Confirmation", "All maps was dumped from ROM", Alert.AlertType.INFORMATION);
    }

    public void showDungeonMapsClick() {
        JavaFxUtils.showPane("MapsPane.fxml");
    }

    public void dumpLevelStatsClick() {
        dump.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        dump.moveTo(0xF8AF);
        List<String> allLevels =
                Stream.of(getLevels(0), getLevels(1), getLevels(2), getLevels(3))
                        .flatMap(Collection::stream).collect(Collectors.toList());
        dump.setByteOrder(ByteOrder.BIG_ENDIAN);

        Path out = Paths.get("src/main/resources/levels.csv");
        try {
            Files.write(out, allLevels, Charset.defaultCharset());
        } catch (IOException e) {
            e.printStackTrace();
        }
        JavaFxUtils.showAlert("Done", "Level dumps successfully dumped!", Alert.AlertType.INFORMATION);
    }

    private List<String> getLevels(int index) {
        return IntStream.range(1, 31).mapToObj(i -> "hero" + index + "-" + i + "=" + (new Level(dump)).toCSV()).collect(Collectors.toList());
    }

    public void dumpAllRleCompressedDataClick() {
        JavaFxUtils.showPane("RlePane.fxml");
    }

    public void processRawMapsDataClick() {


        String name = "";
        // need????
        Geo currentGeo = null;
        List<Geo> geos = new LinkedList<>();

        for (String line: Config.mapRaw) {
            // chests, bosses, ...
            if (line.contains("\t")) {
                System.out.println("chests, bosses, ...");
                //TODO process
                continue;
            }
            // map data
            //System.out.println(line.length());
            if (line.length() == 68) {
                Dump dump = new Dump(24);
                dump.writeHexDump(line);
                currentGeo = new Geo(name);
                currentGeo.readFromRom(dump, 0);
                geos.add(currentGeo);
                System.out.println("map data: " + currentGeo);
                continue;
            }
            // name
            name = line;
            System.out.println("Name: " + line);
        };

        Path out = Paths.get("src/main/resources/maps.csv");
        try {
            Files.write(out, geos.stream().map(Geo::toCSV).collect(Collectors.toList()),
                    Charset.defaultCharset());
        } catch (IOException e) {
            e.printStackTrace();
        }

        //TODO нужна раскладка входов-выходов
        //TODO нужна раскладка сундуков
        //TODO нужна раскладка боссов

        //TODO нужен список подземелий: dungeonIdXY=title
        List<String> dungeonNames = geos.stream()
                .filter(Geo::isDungeon)
                .filter(Geo::isClearName)
                .sorted(Comparator.comparing(Geo::getName))
                .map(Geo::getDungeonNameProperty)
                .collect(Collectors.toList());
        dungeonNames.forEach(System.out::println);

        System.out.println("==============================");

        int[] k = new int[1];
        List<String> commentNames = geos.stream()
                .filter(Geo::hasNameComment)
                .map(Geo::getNameComment)
                .distinct()
                .sorted()
                .map(d -> String.format("comment%X=%s", k[0]++, d))
                .collect(Collectors.toList());
        commentNames.forEach(System.out::println);

        //Geo g = new Geo("test #1");
        //System.out.println(g.getLevel());
        //TODO список карт dungeonId=color

        System.out.println("==============================");

        //TODO список подземелий: dungeonIdXY=roomId;titleId;level;test commentId
        List<String> dungeons = geos.stream()
                .filter(Geo::isDungeon)
                .sorted(Comparator.comparing(Geo::getDungeon))
                .map(geo -> geo.getDungeonProperty(dungeonNames.stream().map(d -> d.split("=")[1]).collect(Collectors.toList()),
                        commentNames.stream().map(d -> d.split("=")[1]).collect(Collectors.toList())))
                .collect(Collectors.toList());
        dungeons.forEach(System.out::println);


        JavaFxUtils.showAlert("Confirmation", "All data was processed", Alert.AlertType.INFORMATION);
    }
}
