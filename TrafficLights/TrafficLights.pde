final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;

TileGridMaker tileGridMaker;

void setup() {
  tileGridMaker = new TileGridMaker(30, 15);
  size(1200, 600);
}

void draw() {
  tileGridMaker.displayGrid();
}
