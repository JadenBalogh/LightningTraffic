class Tile {
  int x;
  int y; 
  
  boolean[] isGreen; // preset light array of red/green over time in seconds
  boolean[] carInDir; // cars going NESW on tile
  boolean isIntersection;
  boolean isRoad;
  boolean isLight;
  int size;

  Tile(int x, int y, int size) {
    this.x = x;
    this.y = y;
    carInDir = new boolean[4];
    this.size = size;
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
    
    rect(x * size + size / 2, y * size + size / 2, tileGridMaker.tWidth, tileGridMaker.tHeight);
    
    fill(255);
  }
}
