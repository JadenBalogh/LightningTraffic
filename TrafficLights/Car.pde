class Car {
  Tile[] path;
  int currentTile = 0;
  int dir;
  int x, y;
  boolean flagged;
  
  Car() {
    int numTiles = 40;
      this.path = new Tile[numTiles];
      for (int i = 0; i < numTiles; i++) {
        Tile t = new Tile(i,7);
          for(int j = 0; j < t.isGreen.length; j++) {
            t.isGreen[j] = true;
          } 
        path[i] = t;
      }
      
      if(frameCount % 3 == 0) {
      for (int i = 0; i < numTiles; i++) {
        Tile t = new Tile(15,i);
          for(int j = 0; j < t.isGreen.length; j++) {
            t.isGreen[j] = true;
          } 
        path[i] = t;
      }
      }
      
      this.x = path[0].x;
      this.y = path[0].y;
      this.dir = 1;
  }
  

  boolean canMove(int nextDir) {
    return path[currentTile].isGreen[nextDir] && !path[currentTile+1].carInDir[nextDir];
  }
  
  void move() {
    int dx = path[currentTile+1].x - path[currentTile].x;
    int dy = path[currentTile+1].y - path[currentTile].y;
    int nextDir = getCardinalDir(dx, dy); // direction we are moving
    if (canMove(nextDir)) {
      path[currentTile].carInDir[dir] = false;
      currentTile++;
      
      x += dx;
      y += dy;

      // If the car arrives at the destination it disappears
      if (currentTile == path.length - 1) {
        // ADD: Destroy Car
        flagged = true;
        return;
      }

      path[currentTile].carInDir[nextDir] = true;
      dir = nextDir;
    }
  }

  int getCardinalDir(int i, int j) {
    if (j > 0) return NORTH;
    else if (i > 0) return EAST;
    else if (j < 0) return SOUTH;
    else return WEST;
  }
  
  void display() {
    rectMode(CENTER);
    fill(0,0,255);
    int w = tileGridMaker.tWidth;
    int h = tileGridMaker.tHeight;
    rect(x*w+w/2, y*h+h/2, w*0.8, h*0.8);
    fill(255);
  }
}
