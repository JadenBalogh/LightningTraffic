// this is an editor, it's only for development purposes, it has no actual functionality in the program
/*
import java.util.Scanner;
import java.io.*;

PrintWriter pw;
File file  = new File("/Users/jean-philippeabadir/Documents/GitHub/TrafficLights/TrafficLights/AITrafficLights.txt");
String result = "";

class Editor { 

  void write() { 
    try {
      pw = new PrintWriter(file);  
      print(result);
      pw.print(result);
      pw.close();
    } 
    catch(java.io.FileNotFoundException e) {
      print("file not found error");
    }
  }
}

void mouseClicked() {
  for (int i = 0; i < tileGridMaker.tileGrid.length; i++) {
    for (int j = 0; j < tileGridMaker.tileGrid[i].length; j++) {
      Tile t = tileGridMaker.tileGrid[i][j];
      if (mouseX >= t.x - 10 && mouseX <= t.x + 10) {
        if (mouseY >= t.y - 10 && mouseY <= t.y + 10) {
          result += i + " " + j + "\n";
        }
      }
    }
  }
}

void keyPressed() {
  e.write();
  makeRoads();
}

void makeIntersections() {
  try {
    File intersectionFile = new File("/Users/jean-philippeabadir/Documents/GitHub/TrafficLights/TrafficLights/intersectionsData.txt");
    Scanner in = new Scanner(intersectionFile);
    String currentLine = "";
    while (in.hasNextLine()) {
      currentLine = in.nextLine();
      int x = -1;
      int y = -1;
      String[] parts = currentLine.split(" ");
      x = Integer.parseInt(parts[0]);
      y = Integer.parseInt(parts[1]);

      //tileGridMaker.tileGrid[x][y].isRoad = true;
      tileGridMaker.tileGrid[x][y].isIntersection = true;
    }
    in.close();
  } 
  catch(java.io.FileNotFoundException e) {
    print("file not found error from here");
  }
}

void makeRoads() {
  try {
    Scanner in = new Scanner(file);
    String currentLine = "";
    while (in.hasNextLine()) {
      currentLine = in.nextLine();
      int x = -1;
      int y = -1;
      String[] parts = currentLine.split(" ");
      x = Integer.parseInt(parts[0]);
      y = Integer.parseInt(parts[1]);

      tileGridMaker.tileGrid[x][y].isRoad = true;
      //tileGridMaker.tileGrid[x][y].isIntersection = true;
    }
    in.close();
  } 
  catch(java.io.FileNotFoundException e) {
    print("file not found error");
  }
}
*/
