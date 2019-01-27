class Car {
  Tile[] path;
  int currentTile = 0;
  int dir;
  int x, y;
  int side;
  
  Car(int x, int y) {
    side = (int)(tileGridMaker.tWidth * 0.7);
    this.x = x * tileGridMaker.tWidth - tileGridMaker.tHeight / 2;
    this.y = y * tileGridMaker.tHeight - tileGridMaker.tHeight / 2;
  }
  
  
  boolean canMove(int direction) {
    return path[currentTile].isGreen[frameCount] && path[currentTile+1].carInDir[direction];
  }

  void move() {
    int dx = path[currentTile+1].x - path[currentTile].x;
    int dy = path[currentTile+1].y - path[currentTile].y;
    int nextDir = getCardinalDir(dx, dy); // direction we are moving

    if (canMove(nextDir)) {
      path[currentTile].carInDir[dir] = false;
      currentTile++;

      // If the car arrives at the destination it disappears
      if (currentTile == path.length - 1) {
        // ADD: Destroy Car
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
    fill(0, 0, 255);
    rectMode(CENTER);
    rect(x, y, side, side);
    fill(255);
  }
}
