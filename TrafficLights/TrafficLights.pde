final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;

TileGridMaker tileGridMaker;
CarHandler carHandler;
//Car c;
ArrayList<Car> cars;

void setup() {
  tileGridMaker = new TileGridMaker(60, 30);
  //carHandler = new CarHandler(1);
  cars = new ArrayList<Car>();
  size(1200, 600);
  frameRate(1);
}

void draw() {
  tileGridMaker.displayGrid();
  //carHandler.update();
  if(frameCount % 2 == 0) {
    print(0);
    cars.add(new Car(0));
  }
  
  for(Car c: cars) {
      c.move();
  c.display();
  }
  
  

}
