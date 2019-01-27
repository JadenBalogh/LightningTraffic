
void settings() {
 size((int)(displayWidth * 0.9), (int)(displayHeight * 0.8)); 
}

void setup() {
 scale((int)(displayWidth * 0.001));
 print(displayWidth);
 rectMode(CENTER);
 rect(width / 2, height / 2, 1450, 790); 
}
