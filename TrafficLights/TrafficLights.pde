import java.util.*;

final int NORTH = 0;
final int EAST = 1;
final int SOUTH = 2;
final int WEST = 3;


Set[] sets;
int activeSet = 0;
int peakGeneration;

void setup() {
  sets = new Set[30];
  for (int i = 0; i < 30; i++) {
    sets[i] = new Set();
  }
  size(1200, 600);
  frameRate(300);
}

void draw() {
  sets[activeSet].update();
  textSize(20);
  fill(255, 0, 0);
  text("peak generation: ", width * 0.95 - 200, height * 0.95 );
  text(peakGeneration, width * 0.95 - 10, height * 0.95);
  if (sets[activeSet].completed()) {
    println(sets[activeSet].frames);


    activeSet++;
    if (activeSet == sets.length) {
      Arrays.sort(sets);
      peakGeneration = sets[sets.length - 1].frames;
      for (Set s : sets) {
        print(s.frames + " ");
      }
      println();
      Set s1 = sets[0];
      Set s2 = sets[1];

      Set baby = new Set();
      for (int i = 0; i < 30; i++) {
        if (random(2) >= 1) {
          baby.dnas[i] = s1.dnas[i].mutate();
        } else {
          baby.dnas[i] = s2.dnas[i].mutate();
        }
      }
      sets[sets.length - 1] = baby;
      activeSet = 0;
      for (int i = 0; i < sets.length; i++) {
        sets[i].reset();
      }
    }
  }
}
