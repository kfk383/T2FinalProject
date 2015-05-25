int startX, startY; // the location of the start button
int insX, insY; // the location of the instructions button
int setX, setY; // the location of the settings button
color buttonColor, highlightColor;
int buttonSize = 95;
PImage bImg;

void setup() {
  int screenWidth = 1200;
  int screenHeight = 700;
  bImg = loadImage("titlepg.png");
  size(screenWidth, screenHeight);
  bImg.resize(screenWidth, screenHeight);
  buttonColor = color(645);
  highlightColor = color(641);
  startX = 100;
  startY = 200;
  insX = 100;
  insY = 400;
  setX = 100;
  setY = 600;
}
void draw() {
  updateMouse(mouseX, mouseY);
  background(bImg);
}
void updateMouse() {
}
String overButton(int x, int y, int width, int height) {
}

