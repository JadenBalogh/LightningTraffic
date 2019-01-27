class Car {
  ArrayList<Tile> path = new ArrayList<Tile>();
  int currentTile = 0;
  int dir;
  int x, y;
  int side;
  int type; 
  
  Car(int x, int y, int type) {
    side = (int)(tileGridMaker.tWidth * 0.7);
    this.x = x;
    this.y = y;
    this.type = type;
    initPath(type);
  }
  
  void initPath(int type) {
    // move 4 steps right
    path = new ArrayList<Tile>();
    for(int i = 0; i < 20; i++) {
      path.add(tileGridMaker.tileGrid[y][x + i]);
    }
  }
  
  boolean canMove(int direction) {
    return (!path.get(currentTile).isLight || path.get(currentTile).isGreen[frameCount % 10]) && !path.get(currentTile + 1).carInDir[direction];
  }
  
  void move() {
    print(canMove(dir));
    int dx = path.get(currentTile + 1).x - path.get(currentTile).x;
    int dy = path.get(currentTile + 1).y - path.get(currentTile).y;
    int nextDir = getCardinalDir(dx, dy); // direction we are moving

    if (canMove(nextDir)) {
      path.get(currentTile).carInDir[dir] = false;
      currentTile++;

      // If the car arrives at the destination it disappears
      if (currentTile == path.size() - 1) {
        // ADD: Destroy Car
        return;
      }
      
      path.get(currentTile).carInDir[nextDir] = true;
      dir = nextDir;
    }
    x = path.get(currentTile).x;
    y = path.get(currentTile).y;
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
