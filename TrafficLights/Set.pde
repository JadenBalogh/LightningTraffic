
class Set implements Comparable<Set> { 
  TileGridMaker tileGridMaker;
  ArrayList<Car> cars;
  int totalCarsMade;

  DNA[] dnas;
  int frames;
  Set() {
    dnas = new DNA[30];
    for (int i = 0; i < dnas.length; i++) {
      dnas[i] = new DNA();
      frames = 0;
    }

    totalCarsMade = 0;
    tileGridMaker = new TileGridMaker(60, 30, this);
    cars = new ArrayList<Car>();
  }

  void update() {

    tileGridMaker.displayGrid();
    if (frameCount % 1 == 0 && totalCarsMade < 40) {
      totalCarsMade++;
      cars.add(new Car(frameCount % 2, tileGridMaker));
    }

    ArrayList<Car> flagged = new ArrayList<Car>();
    for (Car c : cars) {
      c.move();
      frames++;
      if (c.flagged)
        flagged.add(c);
      c.display();
    }
    cars.removeAll(flagged);

    if (frames > 30000) {
      cars.clear();
      totalCarsMade = 40;
      frames = 30000;
    }
  }

  boolean completed() {
    return cars.size() == 0 && totalCarsMade == 40;
  }

  int compareTo(Set other) {
    return this.frames - other.frames;
  }

  void reset() {
    tileGridMaker = new TileGridMaker(60, 30, this);
    cars.clear();
    frames = 0;
    totalCarsMade = 0;
  }
}
