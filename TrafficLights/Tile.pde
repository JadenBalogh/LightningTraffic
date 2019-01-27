
class Tile {
  int x;
  int y; 
  
  boolean[] isGreen; // preset light array of red/green over time in seconds
  boolean[] carInDir; // cars going NESW on tile
  boolean isIntersection;
  boolean isRoad;
  boolean noColor;

  Tile(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  void display() {
     rectMode(CENTER);
    if(isRoad) {
      fill(200); 
    }
    if (isGreen != null) {
      fill(isGreen[frameCount % isGreen.length] ? color(0, 255, 0) : color(255, 0, 0));
    }
    
    if(isIntersection) {
     fill(100); 
    }
    if(noColor) {
     fill(255); 
    }
    
    rect(x, y, tileGridMaker.tWidth, tileGridMaker.tHeight);
    fill(255);
  }
}
