class Player {
  PImage front, right, left;
  int dx = 7;
  int playerX;
  int playerY;
  int playerW;
  int playerH;
  int mode;

  int STANDING = 0;
  int L = 1;
  int R = 2;

  Player() {
    playerX = 600;
    playerY = 200;
    playerW = 135;
    playerH = 500;
    front=loadImage("front.png");
    front.resize(playerW, playerH);
    right=loadImage("right.png");
    right.resize(playerW+50, playerH);
    left=loadImage("left.png");
    left.resize(playerW+50, playerH);
  }

  void move(int x) { //x-coordinate of the destination
    if (playerX - x > -75 && playerX - x < 75) {
      mode = STANDING;
    } else if (playerX < x) {
      mode = R;
      playerX += dx;
    } else {
      mode = L;
      playerX -= dx;
    }
  }
  boolean arrived(int x) {
    return (playerX - x > -100 || playerX - x < 100);
  }
  void drawImage() {
    if (mode == STANDING) {
      image(front, playerX, playerY);
    } else if (mode == L) {
      image(left, playerX, playerY);
    } else {
      image(right, playerX, playerY);
    }
  }

  //size 145,500
  //location 600,200
}

