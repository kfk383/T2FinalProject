class Recipes {
  boolean carrying, tool;
  //click on ingredients, animation to show you clicked on the right ingredients, click on correct appliance, animation of ingredients cooking
  //first recipe: scrambled eggs(frying pan), boiled egg, cheese sandwich(need bread), pancakes, waffles,hashbrowns,cereal  
  PImage[] ingred;
  PImage ing;
  void mouseClicked() {
    if (mouseX < 940 && mouseX > 890 && mouseY > 160 && mouseY <200) {
      carrying = true;
      textSize(32);
      fill(50);
      text("you got the egg!", 600, 100);
    }
    if (mouseX < 200 && mouseX > 100 && mouseY > 250 && mouseY < 350) {
      tool = true;
      text("the egg is in the pot!", 600, 100);
    }
    if (tool && carrying) {
      text("you made a boiled egg!!", 600, 100);
    }
  }
  


}
//910,188
//31,25
