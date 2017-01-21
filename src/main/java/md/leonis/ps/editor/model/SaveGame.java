package md.leonis.ps.editor.model;


public class SaveGame {

    private String name;

    private SaveGameStatus status = SaveGameStatus.EMPTY;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public SaveGameStatus getStatus() {
        return status;
    }

    public void setStatus(SaveGameStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "SaveGame{" +
                "name='" + name + '\'' +
                ", status=" + status +
                '}';
    }
}
