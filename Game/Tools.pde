class Tools {
  int boardX, boardY, ironX, ironY, potX, potY, toasterX, toasterY, ovenX, ovenY, bowlX, bowlY, fryingpanX, fryingpanY;
  int boardW, boardH;
  int ironW, ironH;
  int potW, potH;
  int ovenW, ovenH;
  int toasterW, toasterH;
  int bowlW, bowlH;
  int fryingpanW, fryingpanH;
  int boardCount, ironCount, potCount, toasterCount, ovenCount, bowlCount, panCount; // countdown for tool usage (3 secs each);
  int boardCX, ironCX, potCX, toasterCX, bowlCX, panCX; //x and y coordinates for the countdown of tool usage
  int boardCY, ironCY, potCY, toasterCY, bowlCY, panCY;
  boolean usingBoard, usingIron, usingPot, usingToaster, usingBowl, usingFryingpan;
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
    bowlX=480;
    bowlY=320;
    fryingpanX=120;
    fryingpanY=355;
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
    bowlW=50;
    bowlH=30;
    fryingpanW=100;
    fryingpanH=60;
    boardCX = 775;
    boardCY= 345;
    ironCX = 370;
    ironCY = 320;
    potCX = 235;
    potCY = 370;
    toasterCX = 990;
    toasterCY = 330;
    bowlCX = 490;
    bowlCY = 325;
    panCX = 170;
    panCY = 380;
  }

  void updateTimers() {
    if (usingBoard) {
      if (boardCount > 0) {
      } else {
        usingBoard = false;
      }
    }
    if (usingIron) {
      if (ironCount > 0) {
      } else {
        usingIron = false;
      }
    }
    if (usingPot) {
      if (potCount > 0) {
        potCount--;
      } else {
        usingPot = false;
      }
    }
    if (usingToaster) {
      if (toasterCount > 0) {
        toasterCount--;
      } else {
        usingToaster = false;
      }
    }
    if (usingBowl) {
      if (bowlCount > 0) {
        bowlCount--;
      } else {
        usingBowl = false;
      }
    }
    if (usingFryingpan) {
      if (panCount > 0) {
        panCount--;
      } else {
        usingFryingpan = false;
      }
    }
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
      toolsClicked[1]=toolsClicked[0];
      toolsClicked[0]="Board";
    } else if (onIron(x, y)) {
      useIron();
      toolsClicked[1]=toolsClicked[0];
      toolsClicked[0]="Iron";
    } else if (onToaster(x, y)) {
      useToaster();
      toolsClicked[1]=toolsClicked[0];
      toolsClicked[0]="Toaster";
    } else if (onPot(x, y)) {
      usePot();
      toolsClicked[1]=toolsClicked[0];
      toolsClicked[0]="Pot";
    } else if (onBowl(x, y)) {
      useBowl();
      toolsClicked[1]=toolsClicked[0];
      toolsClicked[0]="Bowl";
      text(toolsClicked[0], 100, 70);
      text("bowlingwut", 30, 80);
    } else if (onFryingpan(x, y)) {
      useFryingpan();
      toolsClicked[1]=toolsClicked[0];
      toolsClicked[0]="Fryingpan";
    }
  }
  void useIron() {
    usingIron = true;
    ironCount = 3;
  }
  void useToaster() {
    usingToaster = true;
    toasterCount = 3;
  }
  void useBoard() {
    usingBoard = true;
    boardCount = 3;
  }
  void usePot() {
    usingPot = true;
    potCount = 3;
  }
  void useBowl() {
    usingBowl = true;
    bowlCount = 3;
  }
  void useFryingpan() {
    usingFryingpan = true;
    panCount = 3;
  }
  boolean onBowl(int x, int y) {
    boolean value = true;
    if (!(y >= bowlY && y <= boardY + boardH)) {
      value = false;
    } else if (!(x >= boardX && x <= boardX + boardW)) {
      value = false;
    }
    return value;
  }
  //506,331
  //480,420,50,30
  boolean onFryingpan(int x, int y) {
    boolean value= true;
    if (!(y >= fryingpanY && y <= fryingpanY + fryingpanH)) {
      value=false;
    } else if (!(x >= fryingpanX && x <= fryingpanX + fryingpanW)) {
      return false;
    }
    return value;
  }
  boolean onBoard(int x, int y) {
    boolean value = true;
    if (!(x >= boardX && x <= boardX + boardW)) {
      value = false;
    } else if (!(y >= boardY && y <= boardY + boardH)) {
      value = false;
    }
    return value;
  }
  boolean onIron(int x, int y) {
    boolean value = true;
    if (!(x >= ironX && x <= ironX + ironW)) {
      value = false;
    } else if (!(y >= ironY && y <= ironY + ironH)) {
      value = false;
    }
    return value;
  }
  boolean onToaster(int x, int y) {
    boolean value = true;
    if (!(x >= toasterX && x <= toasterX + toasterW)) {
      value = false;
    } else if (!(y >= toasterY && y <= toasterY + toasterH)) {
      value = false;
    }
    return value;
  }
  boolean onPot(int x, int y) {
    boolean value = true;
    if (!(x >= potX && x <= potX + potW)) {
      value = false;
    } else if (!(y >= potY && y <= potY + potH)) {
      value = false;
    }
    return value;
  }
  boolean checktool(String t) {

    for (String s : toolsClicked) {
      if (s != null) { 
        if (s.equals(t)) { 
          return true;
        }
      }
      return false;
    }
    return false;
  }
  void drawTimers() {
    textSize(24);
    if (usingIron) {
      text(ironCount, ironCX, ironCY);
    }
    if (usingToaster) {
      text(toasterCount, toasterCX, toasterCY);
    }
    if (usingBoard) {
      text(boardCount, boardCX, boardCY);
    }
    if (usingPot) {
      text(potCount, potCX, potCY);
    }
    if (usingFryingpan) {
      text(panCount, panCX, panCY);
    }
    if (usingBowl) {
      text(bowlCount, bowlCX, bowlCY);
    }
  }
}

