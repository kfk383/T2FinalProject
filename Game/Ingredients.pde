class Ingredients {
  int eggX, eggY, eggW, eggH;
  int cheeseX, cheeseY, cheeseW, cheeseH;
  int appleX, appleY, appleW, appleH;
  int batterX, batterY, batterW, batterH;
  int potatoX, potatoY, potatoW, potatoH;
  int milkX, milkY, milkW, milkH;
  boolean holdingEgg, holdingCheese, holdingApple, holdingBatter, holdingPotato;

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
}

