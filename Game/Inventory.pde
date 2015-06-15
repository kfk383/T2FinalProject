class Inventory {
  PImage ingredient1;
  PImage ingredient2;
  int backX, backY;
  int backW, backH;
  int slot1X, slot1Y;
  int slot2X, slot2Y;
  int slotW, slotH;
  
  String[] ingr;
  String ingrt;
  

  Inventory() {
    backX = 630; 
    backY = 125;
    backW = 135;
    backH = 90;
    slotW = 50;
    slotH = 50;
    slot1Y = slot2Y = 155;
    slot1X = 640;
    slot2X = 705;
  }

  void addIngredient(String filename) {
  
    ingredient2 = ingredient1;
    
    ingredient1 = loadImage(filename);
    ingredient1.resize(50,50);
  
  }

void emptying(){
  for(int i=0;i<2;i++){
    if(currIngredients[i]!=null){
    currIngredients[i]=null;
  }}
}
  
  
  void drawImages(){
    fill(100, 0, 0);
    rect(backX, backY, backW, backH);
    fill(255,255,255);
    rect(slot1X, slot1Y, slotW, slotH);
    fill(255,255,255);
    rect(slot2X, slot2Y, slotW, slotH);
    textSize(20);
    fill(0, 255, 204);
    text("INVENTORY", 640,150);
    if (ingredient1 != null){
      image(ingredient1, slot1X, slot1Y);
    }if (ingredient2 != null){
      image(ingredient2, slot2X, slot2Y);
    }
  }
}
