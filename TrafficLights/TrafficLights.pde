final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;

TileGridMaker tileGridMaker;
CarHandler carHandler;

void setup() {
  tileGridMaker = new TileGridMaker(60, 30);
  carHandler = new CarHandler(1);
  size(1200, 600);
}

void draw() {
  tileGridMaker.displayGrid();
}


 void mouseClicked() {
    for (int i = 0; i < tileGridMaker.tileGrid.length; i++) {
      for (int j = 0; j < tileGridMaker.tileGrid[i].length; j++) {
        Tile t = tileGridMaker.tileGrid[i][j];
        if (mouseX >= t.x - 10 && mouseX <= t.x + 10) {
          if (mouseY >= t.y - 10 && mouseY <= t.y + 10) {
            println("row is " + i);
            println("col is " + j);
           // println();println();
          }
        }
      }
    }
  }
