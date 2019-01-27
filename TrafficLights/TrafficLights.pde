final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;

TileGridMaker tileGridMaker;
CarHandler carHandler;

void setup() {
  tileGridMaker = new TileGridMaker(30, 15);
  carHandler = new CarHandler(1);
  size(1200, 600);
  frameRate(1);
}

void draw() {
  tileGridMaker.displayGrid();
  carHandler.update();
}
