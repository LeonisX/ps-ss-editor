package md.leonis.extractor.view;

import javafx.fxml.FXML;
import javafx.scene.control.Alert;
import md.leonis.bin.ByteOrder;
import md.leonis.bin.Dump;
import md.leonis.extractor.model.DungeonMap;
import md.leonis.extractor.utils.*;
import md.leonis.ps.editor.model.DungeonData;
import md.leonis.ps.editor.model.Event;
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
        List<Event> allEvents = new LinkedList<>();
        Map<String, String> phrases = new LinkedHashMap<>();

        for (String line: Config.mapRaw) {
            // chests, bosses, ...
            if (line.contains("\t")) {
                System.out.println("chests, bosses, ...: " + line);
                allEvents.add(new Event(line, phrases));
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

        //TODO начал проверять евенты
        //по ходу, начиная с байя марлай сейвы убиты. посмотреть что дома, если что - перепройти

        //TODO нужна раскладка входов-выходов
        //TODO нужна раскладка сундуков
        //TODO нужна раскладка боссов

        System.out.println("DungeonNames ==============================");
        //TODO нужен список подземелий: dungeonIdXY=title
        Map<String, String> dungeonNames = geos.stream()
                .filter(Geo::isDungeon)
                .filter(Geo::isClearName)
                .sorted(Comparator.comparing(Geo::getName))
                .collect(Collectors.toMap(Geo::getClearDungeonKey, Geo::getName));

        dungeonNames.entrySet().forEach(System.out::println);

        System.out.println("CommentNames==============================");

        int[] k = new int[1];
        Map<String, String> commentNames = geos.stream()
                .filter(Geo::hasNameComment)
                .map(Geo::getNameComment)
                .distinct()
                .sorted()
                .collect(Collectors.toMap(d -> String.format("comment%02X", k[0]++), d -> d));

        commentNames.entrySet().stream().sorted(Comparator.comparing(Map.Entry::getKey)).forEach(System.out::println);

        Config.languageTable.putAll(commentNames);

        //Geo g = new Geo("test #1");
        //System.out.println(g.getLevel());

        Config.languageTable.putAll(phrases);
        Config.languageTable.putAll(commentNames);
        Config.languageTable.putAll(dungeonNames);


        System.out.println("Dungeons==============================");

        //TODO список подземелий: dungeonIdXY=roomId;titleId;level;test commentId
        Geo.increment = 0;
        /*Map<String, String> dungeons = geos.stream()
                .filter(Geo::isDungeon)
                .sorted(Comparator.comparing(Geo::getDungeon))
                .collect(Collectors.toMap(Geo::getDungeonIndex,
                        geo -> geo.getDungeonValue(dungeonNames, commentNames)));

        dungeons.entrySet().stream().sorted(Comparator.comparing(Map.Entry::getKey)).forEach(System.out::println);*/

        List<DungeonData> dungeonDatas = geos.stream()
                .filter(Geo::isDungeon)
                .sorted(Comparator.comparing(Geo::getDungeon))
                .map(DungeonData::new)
                .collect(Collectors.toList());

        dungeonDatas.stream().sorted(Comparator.comparing(DungeonData::getId)).forEach(d -> {
            System.out.println("D : " + d);
            System.out.println("Df: " + d.fromCSV(d.toMapEntry()));
            System.out.println(d.fineView());
            System.out.println(d.toMapEntry());
        });


        System.out.println("AllEvents==============================");
        //allEvents.stream().sorted((e1, e2) -> Integer.valueOf(e1.getRelativeAddress()).compareTo(e2.getRelativeAddress())).forEach(System.out::println);

        System.out.println("Phrases==============================");
        //phrases.entrySet().forEach(System.out::println);



        //dungeonNames.entrySet().stream()
/*
        dungeons.entrySet().stream().sorted(Comparator.comparing(Map.Entry::getKey)).forEach(e -> {
            String[] chunks = e.getValue().split(";");
            //System.out.println(e.getValue());
            //System.out.println(chunks.length);
            System.out.print(Config.languageTable.getProperty(chunks[1]));
*//*            if (chunks.length == 2) {
                System.out.println();
                return;
            }*//*

            if (!chunks[2].equals("1")) {
                System.out.print(" #" + chunks[2]);
            }
            if (chunks.length == 4) {
                System.out.print(" (" + Config.languageTable.getProperty(chunks[3]) + ")");
            }
            //System.out.print( " ----: " + chunks[1]);
            System.out.print( " x: " + chunks[1].substring(7, 11));
            System.out.print( " y: " + chunks[1].substring(11, 15));
            System.out.print( " dungeonId: " + chunks[1].substring(15));
            System.out.println( " roomId: " + chunks[0]);
        });*/

        JavaFxUtils.showAlert("Confirmation", "All data was processed", Alert.AlertType.INFORMATION);
    }
}
