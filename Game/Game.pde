
//==========================================CONSTANTS AND SETUP FOR GAME=============================
//Button Constants
int startX, startY; // the location of the start button
int insX, insY; // the location of the instructions button
int setX, setY; // the location of the settings button
color buttonColor, highlightColor;
int buttonW = 225;
int buttonH = 60;
boolean onStart, onInstructions, onSettings, clicked;
int destinationX;
int level=0;


//Images
PImage menuImg, startImg, front, right, left;
PImage iron, pot, fryingpan,bowl; 
PImage egg, cheese, bagel, cereal, oatmeal, milk; 
PImage[] eggn;
boolean carrying, tool;
//Modes for Game
int mode;
int MENU = 0;
int START = 1;
int SETTINGS = 2;
int INSTRUCTIONS = 3;

//toolthings
//boolean correctTool;
String[] toolsClicked=new String[2];

//ingredients at hand
boolean clickEgg;
boolean clickCheese, clickBagel, clickCereal, clickOatmeal,clickMilk;
String[] currIngredients = new String[2];

//statusbar things/cooking controls
boolean correctIng=false;//hm
int mouseCount;
boolean correctTool;
int correctmousecount;
boolean tempmousecount,completeGame,finalLev;


//Classes Implemented
Player player; 
Ingredients ingredients;
Recipes recipes;
Tools tools;
Recipes r;
Inventory inventory;
InstructionsText instructions;


void setup() {
  //instantiate implemented classes
  player = new Player();
  ingredients = new Ingredients();
  recipes = new Recipes();
  tools = new Tools();
  r= new Recipes();
  instructions = new InstructionsText();

  //Sets up the constants for drawing the screen
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
  destinationX = 600;
}
//===========================================DRAW FUNCTION=====================================
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
    fill(250,250,250);
    rect(1100,10,70,30);
    fill(50);
    text("Restart",1105,30);
    fill(250,250,250);
    rect(1020,10,70,30);
    fill(50);
    text("Done",1030,30);
    fryingpan=loadImage("fryingpan.png");
    fryingpan.resize(100,60);
   image(fryingpan, 120,355);
    iron = loadImage("iron.png");
    iron.resize(76, 100);
    image(iron, 345, 280);
    pot = loadImage("pot.png");
    pot.resize(87, 65);
    image(pot, 205, 350);
bowl=loadImage("bowl.png");
bowl.resize(50,30);
image(bowl,480,320);
    ingredients.drawImages(); //draws the ingredients on the shelves, as well as the inventory
    player.drawImage();
    player.move(destinationX);
   tools.drawTimers();
    recipes.cook();
  } else if (mode == SETTINGS) {
    displaySettings();
  } else if (mode == INSTRUCTIONS) {
    displayInstructions();
  }
  textSize(18);
  fill(0);
  text(""+mouseX+", "+mouseY, 20, 20);
}
//===============================SHOW INSTRUCTIONS AND SETTINGS PAGES=============================
void displayInstructions() {
  fill(0, 0, 0, 100);
  rect(50, 50, width-100, height-100);
  fill(255); 
  text("Instructions", 100, 100);
  textSize(18);
  text(instructions.getLine(1), 100, 150);
  text(instructions.getLine(2), 100, 200);
  text(instructions.getLine(3), 100, 240);
  text(instructions.getLine(4), 100, 280);
  text(instructions.getLine(5), 100, 320);
  text(instructions.getLine(6), 100, 360);
  text(instructions.getLine(7), 100, 430);
}
void displaySettings() {
  fill(0, 0, 0, 100);
  rect(50, 50, width-100, height-100);
  fill(255);
  text("Settings", 100, 100);
  textSize(18);
  text("Press the spacebar to exit to the main menu", 100, 600);
}
//==============================MOUSE COORDINATES=====================================
void updateMouse(int x, int y) {
  onStart = onSettings = onInstructions = false;
  if (x >= startX && y >= startY && x <= startX+buttonW && y <= startY+buttonH) {
    onStart = true;
  }
  if (x >= insX && y >= insY && x <= insX+buttonW && y <= insY+buttonH) {
    onInstructions = true;
  }
  if (x >= setX && y >= setY && x <= setX+buttonW && y <= setY+buttonH) {
    onSettings = true;
  }
}
//===============================PLAYER INTERACTION===================================




void mousePressed() {
  clicked = true;
}
void mouseReleased() {
  clicked = false;
}
void keyPressed() {
  if (keyCode == 32) {
    mode = MENU;
  }
}
void mouseClicked() {
  tools.checkXY(mouseX, mouseY);
  ingredients.checkMouse(mouseX, mouseY);
  
  if (mouseX > 205 && mouseX < 1075) {
    destinationX = mouseX;
 }
 recipes.foodmove(mouseX,mouseY);
 if(recipes.onLevelButton(mouseX,mouseY)){
   level++;
   mouseCount=0;
}
if(mouseX>=1100&&mouseX<=1170&&mouseY>=10&&mouseY<=40){
  level=0;
mouseCount=0;
tempmousecount=false;

//inventory.emptying();
// rect(1100,10,70,30); this is if restart is clicked on
}
if(mouseX>=1020&&mouseX<=1090&&mouseY>=10&&mouseY<=40&&level==0){
//rect(1020,10,70,30); clicked on done
tempmousecount=true;}
else if(mouseX>=1020&&mouseX<=1090&&mouseY>=10&&mouseY<=40&&level==1){
  completeGame=true;}
}



