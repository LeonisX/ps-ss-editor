package md.leonis.ps.editor.model.enums;

public enum Emulator {

    KEGA_FUSION(8188, 32955, 0x43BC, 0x60BF)/*,
    MEKA,
    EMULICIOUS*/;

    private final int sramSize;
    private final int snapshotSize;
    private final int snapshotRamOffset;
    private final int snapshotSramOffset;

    Emulator(int sramSize, int snapshotSize, int snapshotRamOffset, int snapshotSramOffset) {
        this.sramSize = sramSize;
        this.snapshotSize = snapshotSize;
        this.snapshotRamOffset = snapshotRamOffset;
        this.snapshotSramOffset = snapshotSramOffset;
    }

    public int getSramSize() {
        return sramSize;
    }

    public int getSnapshotSize() {
        return snapshotSize;
    }

    public int getSnapshotRamOffset() {
        return snapshotRamOffset;
    }

    public int getSnapshotSramOffset() {
        return snapshotSramOffset;
    }

    public static Emulator detectEmulatorBySize(int size) {
        for (Emulator emulator: Emulator.values()) {
            if (emulator.sramSize == size) {
                return emulator;
            }
            if (emulator.snapshotSize == size) {
                return emulator;
            }
        }

        return null;
    }

    public static SaveType detectSaveTypeBySize(int size) {
        for (Emulator emulator: Emulator.values()) {
            if (emulator.sramSize == size) {
                return SaveType.SRAM;
            }
            if (emulator.snapshotSize == size) {
                return SaveType.RAM;
            }
        }

        return null;
    }
}
