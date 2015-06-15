class Ingredients {
  
  int eggX, eggY, eggW, eggH;
  int cheeseX, cheeseY, cheeseW, cheeseH;
  int bagelX, bagelY, bagelW, bagelH;
  int cerealX, cerealY, cerealW, cerealH;
  int oatmealX, oatmealY, oatmealW, oatmealH;
  int milkX, milkY, milkW, milkH;
  PImage eggArr;
 

  Inventory inventory = new Inventory();

  void start(){
    eggArr=loadImage("eggarray.png");
   int xegg=0;
    for(int i=0; i<3;i++){
      eggn[i]=egg.get(xegg,0,50,40);
      xegg+=50;
    }
  }
    
  Ingredients() {
    eggX = 910;
    eggY = 188;
    eggW = 35;
    eggH = 30;
    egg = loadImage("egg.png");
    egg.resize(eggW, eggH);

    cheeseX = 945;
    cheeseY = 188;
    cheeseW = 34;
    cheeseH = 24;
    cheese = loadImage("cheese.png");
    cheese.resize(cheeseW, cheeseH);

    bagelX = 985;
    bagelY = 185;
    bagelW = 35;
    bagelH = 28;
    bagel = loadImage("bagel.png");
    bagel.resize(bagelW, bagelH);

    cerealX = 915;
    cerealY = 220;
    cerealW = 47;
    cerealH = 47;
    cereal = loadImage("cereal.png");
    cereal.resize(cerealW, cerealH);

    oatmealX = 965;
    oatmealY = 233;
    oatmealW = 30;
    oatmealH = 35;
    oatmeal = loadImage("oatmeal.png");
    oatmeal.resize(oatmealW, oatmealH);

    milkX = 1005;
    milkY = 235;
    milkW = 30;
    milkH = 36;
    milk = loadImage("milk.png");
    milk.resize(milkW, milkH);
  }

  String[] getIngredients() {
    return currIngredients;
  }

  void checkMouse(int x, int y) {
    if (onEgg(x, y)) {
      
      inventory.addIngredient("egg.png");
      currIngredients[1] = currIngredients[0];
      currIngredients[0] = "egg";
      
    } else if (onCheese(x, y)) {
      inventory.addIngredient("cheese.png");
      currIngredients[1] = currIngredients[0];
      currIngredients[0] = "cheese";
      clickCheese=true;
    } else if (onBagel(x, y)) {
      inventory.addIngredient("bagel.png");
      currIngredients[1] = currIngredients[0];
      currIngredients[0] = "bagel";
      clickBagel=true;
    } else if (onCereal(x, y)) {
      inventory.addIngredient("cereal.png");
      currIngredients[1] = currIngredients[0];
      currIngredients[0] = "cereal";
    } else if (onOatmeal(x, y)) {
      inventory.addIngredient("oatmeal.png");
      currIngredients[1] = currIngredients[0];
      currIngredients[0] = "oatmeal";
    } else if (onMilk(x, y)) {
      inventory.addIngredient("milk.png");
      currIngredients[1] = currIngredients[0];
      currIngredients[0] = "milk";
    }
  }
  boolean checkInvent(String i){

   for(String s:currIngredients){
     if(s!=null){ 
     if(s.equals(i)){
        //clickEgg=true; 
        return true;
    }
  
      }
       return false;
    
    }
    return false;
   }
  
   void addFoodAnim(){
     image(egg,100,200);
   }
     

  boolean onEgg(int x, int y) {
    boolean value = true;
    if (!(x >= eggX && x <= eggX + eggW)) {
      value = false;
    } else if (!(y >= eggY && y <= eggY + eggH)) {
      value = false;
    }
    return value;
  }
  boolean onCheese(int x, int y) {
    boolean value = true;
    if (!(x >= cheeseX && x <= cheeseX + cheeseW)) {
      value = false;
    } else if (!(y >= cheeseY && y <= cheeseY + cheeseH)) {
      value = false;
    }
    return value;
  }
  boolean onBagel(int x, int y) {
    boolean value = true;
    if (!(x >= bagelX && x <= bagelX + bagelW)) {
      value = false;
    } else if (!(y >= bagelY && y <= bagelY + bagelH)) {
      value = false;
    }
    return value;
  }
  boolean onCereal(int x, int y) {
    boolean value = true;
    if (!(x >= cerealX && x <= cerealX + cerealW)) {
      value = false;
    } else if (!(y >= cerealY && y <= cerealY + cerealH)) {
      value = false;
    }
    return value;
  }
  boolean onOatmeal(int x, int y) {
    boolean value = true;
    if (!(x >= oatmealX && x <= oatmealX + oatmealW)) {
      value = false;
    } else if (!(y >= oatmealY && y <= oatmealY + oatmealH)) {
      value = false;
    }
    return value;
  }
  boolean onMilk(int x, int y) {
    boolean value = true;
    if (!(x >= milkX && x <= milkX + milkW)) {
      value = false;
    } else if (!(y >= milkY && y <= milkY + milkH)) {
      value = false;
    }
    return value;
  }
  
    //
  void drawImages() {
    image(cheese, cheeseX, cheeseY);
    image(oatmeal, oatmealX, oatmealY);
    image(milk, milkX, milkY);
    image(bagel, bagelX, bagelY);
    image(cereal, cerealX, cerealY);
    image(egg, eggX, eggY);
    inventory.drawImages();
  }
  }

