class CarHandler {
  ArrayList<Car> cars;

  CarHandler(int numCars) {
    cars = new ArrayList<Car>(numCars);
    //cars.add(new Car());
  }

  void update() {
    for (Car c : cars) {
      c.move();
      c.display();
    }
  }
}
