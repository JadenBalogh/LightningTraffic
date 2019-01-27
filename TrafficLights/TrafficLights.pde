final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;

TileGridMaker tileGridMaker;
CarHandler carHandler;
//Editor e;

void setup() {
  tileGridMaker = new TileGridMaker(60, 30);
  carHandler = new CarHandler(1);
  //e = new Editor();
  size(1200, 600);
}

void draw() {
  tileGridMaker.displayGrid();
}
