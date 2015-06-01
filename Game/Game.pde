int startX, startY; // the location of the start button
int insX, insY; // the location of the instructions button
int setX, setY; // the location of the settings button
color buttonColor, highlightColor;
int buttonW = 225;
int buttonH = 60;
boolean onStart, onInstructions, onSettings, clicked;
PImage menuImg, startImg;
int mode;
int MENU = 0;
int START = 1;
int SETTINGS = 2;
int INSTRUCTIONS = 3;

void setup() {
  int screenWidth = 1200;
  int screenHeight = 700;
  menuImg = loadImage("titlepg.png");
  startImg = loadImage("background1.png");
  size(screenWidth, screenHeight);
  menuImg.resize(screenWidth, screenHeight);
  startImg.resize(screenWidth, screenHeight);
  startX = 225;
  startY = 275;
  insX = 225;
  insY = 400;
  setX = 225;
  setY = 525;
  mode = MENU;
}
void draw() {
  if (mode == MENU) {
    updateMouse(mouseX, mouseY);
    background(menuImg);
    if (! onStart) {
      fill(100, 0, 0);
    } else if (clicked) {
      fill(130, 30, 30);
    } else {
      fill(130, 0, 0);
    }
    rect(startX, startY, buttonW, buttonH);
    if (! onSettings) {
      fill(100, 0, 0);
    } else if (clicked) {
      fill(130, 30, 30);
    } else {
      fill(130, 0, 0);
    }
    rect(setX, setY, buttonW, buttonH);
    if (! onInstructions) {
      fill(100, 0, 0);
    } else if (clicked) {
      fill(130, 30, 30);
    } else {
      fill(130, 0, 0);
    }
    rect(insX, insY, buttonW, buttonH);
    textSize(28);
    fill(0, 255, 204);
    text("Start", 305, 315);
    fill(0, 255, 204);
    text("Instructions", 260, 440);
    fill(0, 255, 204);
    text("Settings", 285, 565);
    fill(0, 255, 204);

    if (clicked && onStart) {
      mode = START;
    } else if (clicked && onSettings) {
      mode = SETTINGS;
    } else if (clicked && onInstructions) {
      mode = INSTRUCTIONS;
    }
  } else if (mode == START) {
    background(startImg);
  } else if (mode == SETTINGS) {
    displaySettings();
  } else if (mode == INSTRUCTIONS) {
    displayInstructions();
  }
}
void displayInstructions() {
  fill(0, 0, 0, 100);
  rect(50, 50, width-100, height-100);
  fill(255);
  text("Instructions", 100, 100);
  text("Press the spacebar to exit to main menu", 100, 600);
}
void displaySettings() {
  fill(0, 0, 0, 100);
  rect(50, 50, width-100, height-100);
  fill(255);
  text("Settings", 100, 100);
  text("Press the spacebar to exit to main menu", 100, 600);
}
void updateMouse(int x, int y) {
  onStart = onSettings = onInstructions = false;
  if (x >= startX && y >= startY && x <= startX+buttonW && y <= startY+buttonH) {
    onStart=true;
  }
  if (x >= insX && y >= insY && x <= insX+buttonW && y <= insY+buttonH) {
    onInstructions = true;
  }
  if (x >= setX && y >= setY && x <= setX+buttonW && y <= setY+buttonH) {
    onSettings = true;
  }
}
void mousePressed() {
  clicked = true;
}
void mouseReleased() {
  clicked = false;
}
void keyPressed(){
  if (keyCode == 32){
     mode = MENU; 
  }
}

