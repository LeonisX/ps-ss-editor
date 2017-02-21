package md.leonis.ps.editor.model;

import md.leonis.extractor.utils.Config;

import java.util.*;

public class Event {

    int relativeAddress;
    int newValue;
    int roomId;
    List<String> textIds = new LinkedList<>();

    public Event(String text, Map<String, String> textPairs) {
        String[] chunks = text.split("\t");
        relativeAddress = Integer.parseInt(chunks[0], 16) - 0xBF00;
        newValue = Integer.parseInt(chunks[1], 16);
        int textOffset = 2;
        if (chunks[textOffset].length() == 2) {
            roomId = Integer.parseInt(chunks[textOffset], 16);
            textOffset++;
        }
        for (int i = textOffset; i < chunks.length; i++) {
            String value = Config.getKeyByValue(chunks[i]);
            if (value.isEmpty()) {
                String key = Event.getKeyByValue(textPairs, chunks[i]);
                if (key.isEmpty()) {
                    key = "phrase" + textPairs.size();
                    textPairs.put(key, chunks[i]);
                }
                value = key;
            }
            textIds.add(value);
        }
        //System.out.println(chunks.length);
    }

    public static String getKeyByValue(Map<String, String> map, String value) {
        return map.entrySet().stream()
                .filter(entry -> Objects.equals(entry.getValue(), value))
                .map(Map.Entry::getKey)
                .findFirst().orElse("");
    }

    public Event(int relativeAddress, int newValue, int roomId, List<String> textIds) {
        this.relativeAddress = relativeAddress;
        this.newValue = newValue;
        this.roomId = roomId;
        this.textIds = textIds;
    }

    public int getRelativeAddress() {
        return relativeAddress;
    }

    public void setRelativeAddress(int relativeAddress) {
        this.relativeAddress = relativeAddress;
    }

    public int getNewValue() {
        return newValue;
    }

    public void setNewValue(int newValue) {
        this.newValue = newValue;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public List<String> getTextIds() {
        return textIds;
    }

    public void setTextIds(List<String> textIds) {
        this.textIds = textIds;
    }

    @Override
    public String toString() {
        return "Event{" +
                "relativeAddress=" + String.format("%04X", relativeAddress) +
                ", newValue=" + String.format("%02X", newValue) +
                ", roomId=" + String.format("%02X", roomId) +
                ", textIds=" + textIds +
                '}';
    }
}
