class Tile {
  int x;
  int y; 
  int tWidth;
  int tHeight;
  boolean[] light; // preset light array of red/green over time in seconds
  boolean[] carInDir; // cars going NESW on tile
  boolean isIntersection;

  Tile(int x, int y, int tWidth, int tHeight) {
    this.x = x;
    this.y = y;
    this.tWidth = tWidth;
    this.tHeight = tHeight;
  }

  void display() {
    rectMode(CENTER);
    rect(x, y, tWidth, tHeight);
  }
}
