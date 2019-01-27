class Tile {
  boolean[] light; // preset array of boolean values, indicating each second if it signals green or red
  boolean[] carInDir; // car going in direction N,E,S,W (max 2 elements can be nonzero at a time)
  boolean isIntersection;
}
