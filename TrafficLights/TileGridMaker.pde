class TileGridMaker {
  int numTilesX;
  int numTilesY;
  Tile[][] tileGrid;

  TileGridMaker(int numTilesX, int numTilesY) {
    this.numTilesX = numTilesX;
    this.numTilesY = numTilesY;
    tileGrid = new Tile[numTilesY][numTilesX];
  }
  
  void displayGrid() {
    rectMode(CENTER);
    int tWidth = width / numTilesX;
    int tHeight = height / numTilesY;
    for (int i = 0; i < numTilesY; i++) {
      for (int j = 0; j < numTilesX; j++) {
        tileGrid[i][j] = new Tile(tWidth / 2 + j * tWidth, tHeight / 2 + i * tHeight, tWidth, tHeight);
        tileGrid[i][j].display();
      }
    }
  }
}
