class Car {
  ArrayList<Tile> path = new ArrayList<Tile>();
  int currentTile = 0;
  int dir;
  int x, y;
  int side;
  boolean flagged;

  Car(int type) {
    path = new ArrayList<Tile>();
    initPath(type);
    side = (int)(tileGridMaker.tWidth * 0.7);
  }

  void initPath(int type) {
    if (type == 0) {
      // JP's path 
      this.x = 3;
      this.y = 7;
      for (int i = 0; i < 20; i++) {
        path.add(tileGridMaker.tileGrid[y][x + i]);
      }
    } else if (type == 1) {
      // Noah's path
    } else if (type == 2) {
      // Jaden's path
      for (int c = 53; c > 45; c--) {
        path.add(tileGridMaker.tileGrid[5][c]);
      }
    }
  }

  boolean canMove(int dir) {
    return (!path.get(currentTile).isLight || path.get(currentTile).isGreen[frameCount % 10]) && !path.get(currentTile + 1).carInDir[dir];
  }

  void move() {
    int dx = path.get(currentTile + 1).x - path.get(currentTile).x; //<>//
    int dy = path.get(currentTile + 1).y - path.get(currentTile).y;
    int nextDir = getCardinalDir(dx, dy); // direction we are moving

    if (canMove(nextDir)) {
      path.get(currentTile).carInDir[dir] = false;
      currentTile++;
      
      x = path.get(currentTile).x;
      y = path.get(currentTile).y;

      // If the car arrives at the destination it disappears
      if (currentTile == path.size() - 1) {
        flagged = true;
        return;
      }

      path.get(currentTile).carInDir[nextDir] = true;
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
    fill(0, 0, 255);
    int displayX = x * tileGridMaker.tWidth - tileGridMaker.tHeight / 2;
    int displayY = y * tileGridMaker.tHeight - tileGridMaker.tHeight / 2;
    rect(displayX, displayY, tileGridMaker.tWidth * 0.8, tileGridMaker.tHeight * 0.8);
    fill(255);
  }
}
