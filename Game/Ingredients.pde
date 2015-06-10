class Ingredients {
  int eggX, eggY, eggW, eggH;
  int cheeseX, cheeseY, cheeseW, cheeseH;
  int appleX, appleY, appleW, appleH;
  int batterX, batterY, batterW, batterH;
  int potatoX, potatoY, potatoW, potatoH;
  int milkX, milkY, milkW, milkH;
  boolean holdingEgg, holdingCheese, holdingApple, holdingBatter, holdingPotato;

  Ingredients() {
    eggX = 910;
    eggY = 188;
    eggW = 31;
    eggH = 25;
    egg = loadImage("egg.png");
    egg.resize(eggW, eggH);
    
    cheeseX = 945;
    cheeseY = 188;
    cheeseW = 34;
    cheeseH = 24;
    cheese = loadImage("cheese.png");
    cheese.resize(cheeseW, cheeseH);
        
    appleX = 980;
    appleY = 180;
    appleW = 30;
    appleH = 31;
    apple = loadImage("apple.png");
    apple.resize(appleW, appleH);
    
    batterX = 915;
    batterY = 225;
    batterW = 47;
    batterH = 47;
    batter = loadImage("batter.png");
    batter.resize(batterW, batterH);
    
    potatoX = 960;
    potatoY = 240;
    potatoW = 43;
    potatoH = 30;
    potato = loadImage("potato.png");
    potato.resize(potatoW, potatoH);
    
    milkX = 1005;
    milkY = 235;
    milkW = 30;
    milkH = 36;
    milk = loadImage("milk.png");
    milk.resize(milkW, milkH);
  }

  boolean onEgg(int x, int y) {
    boolean value = true;
    if (!(x >= eggX && x <= eggX+eggW)) {
      value = false;
    } else if (!(y >= eggY && y <= eggY + eggH)) {
      value = false;
    }
    return value;
  }
  boolean onCheese(int x, int y) {
    boolean value = true;
    if (!(x >= cheeseX && x <= cheeseX+cheeseW)) {
      value = false;
    } else if (!(y >= cheeseY && y <= cheeseY + cheeseH)) {
      value = false;
    }
    return value;
  }
  boolean onApple(int x, int y) {
    boolean value = true;
    if (!(x >= appleX && x <= appleX+appleW)) {
      value = false;
    } else if (!(y >= appleY && y <= appleY + appleH)) {
      value = false;
    }
    return value;
  }
  boolean onBatter(int x, int y) {
    boolean value = true;
    if (!(x >= batterX && x <= batterX+batterW)) {
      value = false;
    } else if (!(y >= batterY && y <= batterY + batterH)) {
      value = false;
    }
    return value;
  }
  boolean onPotato(int x, int y) {
    boolean value = true;
    if (!(x >= potatoX && x <= potatoX+potatoW)) {
      value = false;
    } else if (!(y >= potatoY && y <= potatoY + potatoH)) {
      value = false;
    }
    return value;
  }
  boolean onMilk(int x, int y) {
    boolean value = true;
    if (!(x >= milkX && x <= milkX+milkW)) {
      value = false;
    } else if (!(y >= milkY && y <= milkY + milkH)) {
      value = false;
    }
    return value;
  }
  void drawImages() {
    image(cheese, cheeseX, cheeseY);
    image(potato, potatoX, potatoY);
    image(milk, milkX, milkY);
    image(apple, appleX, appleY);
    image(batter, batterX, batterY);
    image(egg, eggX, eggY);
  }
}

