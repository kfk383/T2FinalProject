int startX, startY; // the location of the start button
int insX, insY; // the location of the instructions button
int setX, setY; // the location of the settings button
color buttonColor, highlightColor;
int buttonW = 225;
int buttonH = 60;
PImage bImg;

void setup() {
  int screenWidth = 1200;
  int screenHeight = 700;
  bImg = loadImage("titlepg.png");
  size(screenWidth, screenHeight);
  bImg.resize(screenWidth, screenHeight);
  buttonColor = color(645);
  highlightColor = color(641);
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
  stroke(0);
  fill(buttonColor);
  rect(startX, startY, buttonW, buttonH);
  stroke(0);
  fill(buttonColor);
  rect(setX, setY, buttonW, buttonH);
  stroke(0);
  fill(buttonColor);
  rect(insX, insY, buttonW, buttonH);
}
void updateMouse(int x, int y) {
}
String overButton(int x, int y) {
  String button = "";

  return button;
}

