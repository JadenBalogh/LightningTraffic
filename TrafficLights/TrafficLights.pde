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
  frameRate(50);
}

void draw() {
  tileGridMaker.displayGrid();
  //carHandler.update();
  int frequency = 1;
  if(frameCount % frequency == 0) {
    cars.add(new Car(frameCount % 2));
  }
  ArrayList<Car> flagged = new ArrayList<Car>();
  for(Car c: cars) {
          if(c.flagged) {
        flagged.add(c);
      } else {
      c.move();
      c.display();
      }
  }
  
  cars.remove(flagged);

}
