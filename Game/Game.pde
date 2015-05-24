PImage img;
void setup() {
  int screenWidth = 1200;
  int screenHeight = 700;
  img = loadImage("titlepg.png");
  size(screenWidth, screenHeight);
  img.resize(screenWidth, screenHeight);
}
void draw() {
  background(img);
}

