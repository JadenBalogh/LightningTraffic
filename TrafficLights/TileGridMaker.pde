class TileGridMaker {
  int numTilesX;
  int numTilesY;
  Tile[][] tileGrid;
  int tWidth;
  int tHeight;
  
  TileGridMaker(int numTilesX, int numTilesY) {
    this.numTilesX = numTilesX;
    this.numTilesY = numTilesY;
    initializeGrid();
  }

  void initializeGrid() {
    tileGrid = new Tile[numTilesY][numTilesX];
    tWidth = width / numTilesX;
    tHeight = height / numTilesY;
    for (int i = 0; i < numTilesY; i++) {
      for (int j = 0; j < numTilesX; j++) {
        tileGrid[i][j] = new Tile(tWidth / 2 + j * tWidth, tHeight / 2 + i * tHeight);
      }
    }
    initializeRoads();
  }

  void displayGrid() {
    rectMode(CENTER);
    for (int i = 0; i < numTilesY; i++) {
      for (int j = 0; j < numTilesX; j++) {
        tileGrid[i][j].display();
      }
    }
  }

  void initializeRoads() {
    for (int i = 3; i < numTilesY; i+=4) {
      for (int j = 0; j < numTilesX; j++) {
        tileGrid[i][j].isRoad = true;
      }
    }
    
    for (int i = 6; i < numTilesX; i+=9) {
      for (int j = 0; j < numTilesY; j++) {
        if(tileGrid[j][i].isRoad)
          tileGrid[j][i].isIntersection = true;
        tileGrid[j][i].isRoad = true;
      }
    }
  }
  
  boolean isRoad(int x, int y) {
    return tileGrid[x][y].isRoad;
  }
}
