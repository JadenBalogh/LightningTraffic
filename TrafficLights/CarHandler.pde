class CarHandler {
  ArrayList<Car> cars;

  CarHandler(int numCars) {
    cars = new ArrayList<Car>(numCars);
  }

  void update() {
    for (Car c : cars) {
      c.move();
      c.display();
    }
  }
}
