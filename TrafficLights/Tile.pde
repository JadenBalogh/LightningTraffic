
class Tile {
  int x;
  int y; 
  
  boolean[] isGreen; // preset light array of red/green over time in seconds
  boolean[] carInDir; // cars going NESW on tile
  boolean isIntersection;
  boolean isRoad;

  Tile(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void display() {
     rectMode(CENTER);
    if(isRoad) {
     fill(200); 
    }
    rect(x, y, tileGridMaker.tWidth, tileGridMaker.tHeight);
    fill(255);
  }
}
