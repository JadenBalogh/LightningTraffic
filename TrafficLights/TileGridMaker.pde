class TileGridMaker {
  int numTileRows;
  int numTileCols;
  Tile[][] tileGrid;
  int tWidth;
  int tHeight;

  TileGridMaker(int numTileRows, int numTileCols) {
    this.numTileRows = numTileRows;
    this.numTileCols = numTileCols;
    initializeGrid();
  }

  void initializeGrid() {
    tileGrid = new Tile[numTileCols][numTileRows];
    tWidth = width / numTileRows;
    tHeight = height / numTileCols;
    for (int i = 0; i < numTileCols; i++) {
      for (int j = 0; j < numTileRows; j++) {
        tileGrid[i][j] = new Tile(tWidth / 2 + j * tWidth, tHeight / 2 + i * tHeight);
      }
    }
    initializeIntersections();
    initializeRoads();
  }

  void displayGrid() {
    rectMode(CENTER);
    for (int i = 0; i < numTileCols; i++) {
      for (int j = 0; j < numTileRows; j++) {
        tileGrid[i][j].display();
      }
    }
  }

  void initializeRoads() {
  }

  void initializeIntersections() {
    tileGrid[15][31].isIntersection = true;
    tileGrid[10][20].isIntersection = true;
    tileGrid[23][28].isIntersection = true;
    tileGrid[16][6].isIntersection = true;
    tileGrid[10][38].isIntersection = true;
    tileGrid[3][8].isIntersection = true;
    tileGrid[12][45].isIntersection = true;
    tileGrid[26][35].isIntersection = true;
    tileGrid[15][20].isIntersection = true;
    tileGrid[10][31].isIntersection = true;
    tileGrid[25][10].isIntersection = true;
    tileGrid[22][37].isIntersection = true;
    tileGrid[11][5].isIntersection = true;
    tileGrid[6][17].isIntersection = true;
    tileGrid[20][51].isIntersection = true;
    tileGrid[4][43].isIntersection = true;
    tileGrid[24][21].isIntersection = true;
    tileGrid[4][30].isIntersection = true;
    tileGrid[20][8].isIntersection = true;
    tileGrid[5][53].isIntersection = true;
    tileGrid[15][25].isIntersection = true;
    tileGrid[17][38].isIntersection = true;
    tileGrid[24][45].isIntersection = true;
    tileGrid[12][13].isIntersection = true;
    tileGrid[12][13].isIntersection = true;
  }

  void initializeLights() { // for a single intersection
  }
}
