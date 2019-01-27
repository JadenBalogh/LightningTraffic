TileGridMaker tileGridMaker;

void setup() {
  tileGridMaker = new TileGridMaker(30, 15);
  size(1200, 600);
}

void draw() {
  tileGridMaker.displayGrid();
}
