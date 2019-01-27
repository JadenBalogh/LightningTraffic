final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;

TileGridMaker tileGridMaker;
CarHandler carHandler;

void setup() {
  tileGridMaker = new TileGridMaker(60, 30);
  //carHandler = new CarHandler(20);
  size(1200, 600);
  frameRate(1);
}

void draw() {
  tileGridMaker.displayGrid();
}
