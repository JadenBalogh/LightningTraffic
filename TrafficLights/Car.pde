class Car {
  Tile[] path = { };
  int currentTile = 0;
  int x, y;
  
  boolean canMove(int direction) {
    return path[currentTile].isGreen && path[currentTile+1].carInDir[direction];
  };
  
  void move() {
    int direction = getDirection(path[currentTile+1].x, path[currentTile+1].y);
    if (canMove(direction)) {
       currentTile++;
       path[currentTile].carInDir[direction] = true;
    }
  };
  
  int getDirection(int i, int j) {
    if (j == 1) return NORTH;
    else if (i == 1) return EAST;
    else if (j == -1) return SOUTH;
    else if (i == -1) return WEST;
  }
}
