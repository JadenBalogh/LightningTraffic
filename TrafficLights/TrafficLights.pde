final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;

TileGridMaker tileGridMaker;
CarHandler carHandler;
Car c;

void setup() {
  tileGridMaker = new TileGridMaker(60, 30);
  //carHandler = new CarHandler(1);
  c = new Car(7, 3);
  size(1200, 600);
  frameRate(10);
}

void draw() {
  tileGridMaker.displayGrid();
  //carHandler.update();
  c.move();
  c.display();
}
