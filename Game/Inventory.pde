class Inventory {
  PImage ingredient1;
  PImage ingredient2;
  
  void addIngredient(String filename){
    ingredient2 = ingredient1;
    ingredient1 = loadImage(filename);
    } 
  
  }
}

