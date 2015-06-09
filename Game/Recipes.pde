class Recipes {
  boolean carrying, tool;
  //click on ingredients, animation to show you clicked on the right ingredients, click on correct appliance, animation of ingredients cooking
  //first recipe: scrambled eggs(frying pan), boiled egg, cheese sandwich(need bread), pancakes, waffles,hashbrowns,cereal  
PImage[] ingred;
PImage ing;
  void updateMouse(int x, int y) {
    if (x < 900 && x > 850 && y > 100 && y <150) {
      carrying = true;
      text("you got the tea leaves!", 600, 100);
    }
    if (x < 200 && x > 100 && y > 250 && y < 350) {
      tool = true;
      text("tea leaves are now in the pot!", 600, 100);
    }
    if (tool && carrying) {
      text("you made tea!!", 600, 100);
    }
  }

void splittinging(){

}

