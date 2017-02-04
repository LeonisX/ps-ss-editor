package md.leonis.extractor.model;


public class Map {

    private String name;
    private Palette palette;
    private Tile[] tiles;
    private BigTile[] bigTiles;
    private MapPiece[] mapPieces;

    public Map(String name, Palette palette, Tile[] tiles, BigTile[] bigTiles, MapPiece[] mapPieces) {
        this.name = name;
        this.palette = palette;
        this.tiles = tiles;
        this.bigTiles = bigTiles;
        this.mapPieces = mapPieces;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Palette getPalette() {
        return palette;
    }

    public void setPalette(Palette palette) {
        this.palette = palette;
    }

    public BigTile[] getBigTiles() {
        return bigTiles;
    }

    public void setBigTiles(BigTile[] bigTiles) {
        this.bigTiles = bigTiles;
    }

    public Tile[] getTiles() {
        return tiles;
    }

    public void setTiles(Tile[] tiles) {
        this.tiles = tiles;
    }

    public MapPiece[] getMapPieces() {
        return mapPieces;
    }

    public void setMapPieces(MapPiece[] mapPieces) {
        this.mapPieces = mapPieces;
    }
}
