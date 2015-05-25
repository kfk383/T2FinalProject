int startX, startY; // the location of the start button
int insX, insY; // the location of the instructions button
int setX, setY; // the location of the settings button
color buttonColor, highlightColor;
int buttonW = 225;
int buttonH = 60;
boolean onStart, onInstructions, onSettings;
PImage bImg;

void setup() {
  int screenWidth = 1200;
  int screenHeight = 700;
  bImg = loadImage("titlepg.png");
  size(screenWidth, screenHeight);
  bImg.resize(screenWidth, screenHeight);
  startX = 225;
  startY = 275;
  insX = 225;
  insY = 400;
  setX = 225;
  setY = 525;
}
void draw() {
  updateMouse(mouseX, mouseY);
  background(bImg);
  if (! onStart) {
    fill(100, 0, 0);
  } else {
    fill(120, 0, 0);
  }rect(startX, startY, buttonW, buttonH);
  if (! onSettings) {
    fill(100, 0, 0);
  } else {
    fill(120, 0, 0);
  }rect(setX, setY, buttonW, buttonH);
  if (! onInstructions) {
    fill(100, 0, 0);
  } else {
    fill(120, 0, 0);
  }rect(insX, insY, buttonW, buttonH);
}
void updateMouse(int x, int y) {
  
}

