// this is an editor, it's only for development purposes, it has no actual functionality in the program


PrintWriter pw;

class Editor { 

  void open() {
    File file = new File("/Users/jean-philippeabadir/Documents/GitHub/TrafficLights/TrafficLights/AITrafficLights.txt");
    try {
      pw = new PrintWriter(file);  
      pw.print("{");
      pw.close();
      println("wrote \"{\" to text file");
    } 
    catch(java.io.FileNotFoundException e) {
       print("error1");
    }
  }
  
  void eClose() { 
    File file = new File("/Users/jean-philippeabadir/Documents/GitHub/TrafficLights/TrafficLights/AITrafficLights.txt");
    try {
      pw = new PrintWriter(file);  
      pw.print("}");
      pw.close();
      print("wrote \"}\" to text file");
    } 
    catch(java.io.FileNotFoundException e) {
      print("error2");
    }
  }
}

void mouseClicked() {
  for (int i = 0; i < tileGridMaker.tileGrid.length; i++) {
    for (int j = 0; j < tileGridMaker.tileGrid[i].length; j++) {
      Tile t = tileGridMaker.tileGrid[i][j];
      if (mouseX >= t.x - 10 && mouseX <= t.x + 10) {
        if (mouseY >= t.y - 10 && mouseY <= t.y + 10) {
          pw.print(i);
          pw.print(", ");
          pw.print(j);
        }
      }
    }
  }
}
