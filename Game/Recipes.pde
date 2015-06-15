class Recipes {
  boolean carrying, tool;
  //click on ingredients, animation to show you clicked on the right ingredients, click on correct appliance, animation of ingredients cooking
  //first recipe: scrambled eggs(frying pan), boiled egg, cheese sandwich(need bread), pancakes, waffles,hashbrowns,cereal  
  PImage[] ingred;
  PImage ing,ing2, plate;
  Tools tools;

  void cook() {
    tools= new Tools();
    textSize(20);
    text("Level "+level, 600, 50);

    if (level==0) {
    correctmousecount=4;
      fill(50);
      text("Let's boil an egg!", 550, 65);
      if (ingredients.checkInvent("egg")&&tools.checktool("Pot") ) {

        text("The egg is in the pot!", 20, 80);
       // tools.updateTimers();
        ing=loadImage("eggarray.png").get(0, 0, 50, 40);
        image(ing, 240, 360);
        correctIng=true;
        correctTool=true;
        if (tempmousecount) {
          pot.resize(87, 65);
          image(pot, 205, 350);
          
          text("level complete!", 600, 90);
          aftercookinganim();
        }
      } else if (currIngredients[0]!="egg"&&currIngredients[0]!=null) {
        text("that's not an egg!", 20, 100);
      } else if (toolsClicked[0]!="Pot" && toolsClicked[0]!=null) {
        text("boiled eggs aren't made there!", 20, 80);
        //one bug is that when you click o an ingredient it also says boiled eggs arent made there
      }
    } else if (level==1) {
     correctmousecount=7;
   
      fill(50);
      text("Let's make fried egg!!", 550, 60);
      correctIng=false;
      correctTool=false;
      if (ingredients.checkInvent("egg")&&tools.checktool("Fryingpan")) {
        text("The egg is on the pan!", 20, 80);
        frameRate(1);
        for (int i=0; i<2; i++) {
          ing=loadImage("eggarray.png").get(0+i*50, 0, 50, 40);
          image(ing, 170, 375);
          frameRate(20);
          correctIng=true;
          correctTool=true;
       
          
        }
        
      
       if (completeGame) {
         tempmousecount=false;
         finalLev=true;
          fryingpan.resize(100, 60);
          image(fryingpan, 120,355);
          text("level complete!", 600, 90);
          aftercookinganim();
        }}
       else if (currIngredients[0]!="egg"&&currIngredients[0]!=null) {
        text("that's not an egg!", 20, 100);
      } else if (toolsClicked[0]!="Fryingpan" && toolsClicked[0]!=null) {
        text("fried eggs aren't made there!", 20, 80);
        //one bug is that when you click o an ingredient it also says boiled eggs arent made there
      }
    }
  else if(level==2){
    fill(50);
    text("Let's make oatmeal!",550,60);
    correctmousecount=8;
    correctIng=false;
      correctTool=false;
      if(ingredients.checkInvent("oatmeal")&&tools.checktool("Pot")){
        text("The oatmeal is in the Pot!", 20,80);
        frameRate(1);
        for (int i=0; i<2; i++) {
          ing=loadImage("oatmealarray.png").get(50,0, 100,130);
    
  }}

  }
  }
  void foodmove(int x, int y) {
    if (level==0&&correctTool&&correctIng&&tools.onPot(x, y)) {
      mouseCount++;
      for (int i=0; i<20; i++) {
        image(ing, 240-i*1, 360);
        
      }
    }
    else if(level==1&&correctTool&&correctIng&&tools.onFryingpan(x,y)){
      mouseCount++;
       for (int i=0; i<20; i++) {
        image(ing, 170-i*1, 375);
      }
  }
  }
  void aftercookinganim() {
    frameRate(1);
    
    background(250, 250, 250);
    plate=loadImage("plate.png");
    plate.resize(150, 70);
    image(plate, 600, 300);
    image(ing, 670, 320);
    fill(250,250,250);
    rect(1100,10,70,30);
    fill(50);
    text("Restart",1105,30);
    frameRate(20);
if(finalLev){
     text("You've completed the game!",600,60);}
     else{
    fill(130, 30, 30);
    rect(650, 150, 150, 30);
    //225,275
    fill(250, 250, 250);
    text("Next Level", 670, 170);
    fill(50);
    text("You have completed Level "+level, 600, 100);}
    if(mouseCount==correctmousecount||mouseCount==correctmousecount+1||mouseCount==correctmousecount-1){
      text("Good Job! you cooked it the perfect amount!",600,30);
  }
   else if(mouseCount<correctmousecount-1){
     text("Oh no! you undercooked the dish!",600,30);
   }
   else if(mouseCount>correctmousecount+1){
   text("Oh no! You overcooked the dish!",600,30);
   }
   
   
   }
  

  boolean onLevelButton(int x, int y) {
    if ((!(x>=650&&x<=650+150))||(!(y>=150&&y<=150+30))) {
      return false;
    }
    return true;
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

