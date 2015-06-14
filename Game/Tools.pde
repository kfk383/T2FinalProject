class Tools {
  int boardX, boardY, ironX, ironY, potX, potY, toasterX, toasterY, ovenX, ovenY;
  int boardW, boardH;
  int ironW, ironH;
  int potW, potH;
  int ovenW, ovenH;
  int toasterW, toasterH;
  int statusW, statusH;
  int bStatusX, bStatusY;
  int iStatusX, iStatusY;
  int pStatusX, pStatusY;
  int tStatusX, tStatusY;
  boolean usingBoard, usingIron, usingPot, usingToaster;
  color emptyS, fullS;

  Tools() {
    boardX = 750;
    boardY = 340;
    boardW = 80;
    boardH = 15;
    ironX = 350;
    ironY = 290;
    ironW = 65;
    ironH = 80;
    toasterX = 950;
    toasterY = 320;
    toasterW = 125;
    toasterH = 60;
    potX = 210;
    potY = 360;
    potW = 75;
    potH = 45;
    ovenX = 250;
    ovenY = 440;
    ovenW = 195;
    ovenH = 195;
  }

  void go(int x, int y) {
    //status bar? use two rectangles attached to one another with different colors for each bar.
    checkXY(x, y);
    if (usingIron) {
    }
    if (usingToaster) {
    }
    if (usingBoard) {
    }
    if (usingPot) {
    }
  }
  void checkXY(int x, int y) {
    if (onBoard(x, y)) {
      useBoard();
    } else if (onIron(x, y)) {
      useIron();
    } else if (onToaster(x, y)) {
      useToaster();
    } else if (onPot(x, y)) {
      usePot();
    }
  }
  void useIron() {
    usingIron = true;
  }
  void useToaster() {
    usingToaster = true;
  }
  void useBoard() {
    usingBoard = true;
  }
  void usePot() {
    usingPot = true;
  }
  boolean onBoard(int x, int y) {
    boolean value = true;
    if (!(x >= boardX && x <= boardX+boardW)) {
      value = false;
    } else if (!(y >= boardY && y <= boardY + boardH)) {
      value = false;
    }
    return value;
  }
  boolean onIron(int x, int y) {
    boolean value = true;
    if (!(x >= ironX && x <= ironX+ironW)) {
      value = false;
    } else if (!(y >= ironY && y <= ironY + ironH)) {
      value = false;
    }
    return value;
  }
  boolean onToaster(int x, int y) {
    boolean value = true;
    if (!(x >= toasterX && x <= toasterX+toasterW)) {
      value = false;
    } else if (!(y >= toasterY && y <= toasterY + toasterH)) {
      value = false;
    }
    return value;
  }
  boolean onPot(int x, int y) {
    boolean value = true;
    if (!(x >= potX && x <= potX+potW)) {
      value = false;
    } else if (!(y >= potY && y <= potY + potH)) {
      value = false;
    }
    return value;
  }
}

