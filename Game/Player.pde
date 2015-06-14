class Player {
  PImage front, right, left;
  int dx = 15;
  int playerX = 600;
  int playerY = 200;
  int playerW = 135;
  int playerH = 500;
  boolean moving, goingLeft;

  Player() {
    front=loadImage("front.png");
    front.resize(playerW, playerH);
    right=loadImage("right.png");
    right.resize(playerW, playerH);
    left=loadImage("left.png");
    left.resize(playerW, playerH);
  }

  boolean move(int x) { //x-coordinate of the destination
    if (playerX - x > -30 || playerX - x < 30) {
      moving = false;
      goingLeft = false;
      return true;
    } else if (playerX < x) {
      moving = true;
      goingLeft = false;
      playerX += dx;
    } else {
      moving = true;
      goingLeft = true;
      playerX -= dx;
    }
    return false;
  }
  void draw() {
    if (!moving) {
      image(front, playerX, playerY);
    } else if (goingLeft) {
      image(left, playerX, playerY);
    } else {
      image(right, playerX, playerY);
    }
  }

  //size 145,500
  //location 600,200
}

