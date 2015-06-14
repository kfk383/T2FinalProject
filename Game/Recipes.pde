class Recipes {
  boolean carrying, tool;
  //click on ingredients, animation to show you clicked on the right ingredients, click on correct appliance, animation of ingredients cooking
  //first recipe: scrambled eggs(frying pan), boiled egg, cheese sandwich(need bread), pancakes, waffles,hashbrowns,cereal  
  PImage[] ingred;
  PImage ing;
  Tools tools;
  
  void cook(){
    tools= new Tools();
    textSize(20);
    text("Level "+level, 600,50);
          if(level==0&&ingredients.checkInvent("egg")&&tools.checktool("Pot") ){
 text("The egg is in the pot!",20,80);
ing=loadImage("eggarray.png").get(0,0,50,40);
            image(ing,243,360);

  
}
         
         
         
  }
    
  }






/*
for recipes:
first does user have ingredient required in inventory
next user clicks on correct tool?
next animation
click on tool and ingredient will appear. if final image matches what you need you win round.
THINGS TO DO:
1. when correct ingredient is in  array[0] and correct tool is clicked on, start   cooking animation. add different recipes/levels.
2. cooking animation is timed and has a status bar. things can be undercooked or overcooked
3. more animation:food is placedon a plate and a plate sucktion thing comes in and takes away the food
4. divide recipes into levels (unloc new recipes)

*/


