class Recipes {
  boolean carrying, tool,cooking;
  //click on ingredients, animation to show you clicked on the right ingredients, click on correct appliance, animation of ingredients cooking
  //first recipe: scrambled eggs(frying pan), boiled egg, cheese sandwich(need bread), pancakes, waffles,hashbrowns,cereal  
  PImage[] ingred;
  PImage ing,plate,suction;
  Tools tools;
  
  void cook(){
    tools= new Tools();
    textSize(20);
    text("Level "+level, 600,50);
   
          if(level==0){ text("Let's boil an egg!",600,65);
          if(ingredients.checkInvent("egg")&&tools.checktool("Pot") ){
            
 text("The egg is in the pot!",20,80);
ing=loadImage("eggarray.png").get(0,0,50,40);
image(ing,240,360);
correctIng=true;
correctTool=true;

    //SLOW DOWN ANIMATION 
            if(mouseCount>=4){
              pot.resize(87,65);
              image(pot,205,350);;
            text("level complete!", 600,90);
         aftercookinganim(); }
}
else if(currIngredients[0]!="egg"&&currIngredients[0]!=null){
  text("that's not an egg!",20,100);
}
else if(toolsClicked[0]!="Pot" && toolsClicked[0]!=null){
text("boiled eggs aren't made there!",20,80);
      //one bug is that when you click o an ingredient it also says boiled eggs arent made there  
        }
          }
       
       
       /* else if(level==1){text("Let's make some cereal!",600,65); 
    if(ingredients.checkInvent("milk")&&tools.checktool("Bowl")){
  ing=loadImage("milkarray.png").get(0,0, 40,50); 
image(ing,500,265);
    text("level 2 completed!",600,90);    
    }
          
}*/
    // else if(level==1){
   //text(    
         
  }

    
  
void foodmove(int x, int y){
  if(level==0&&correctTool&&correctIng&&tools.onPot(x,y)){
   mouseCount++;
    for(int i=0;i<20;i++){
            image(ing,240-i*1,360);
}
  }
  //SET UP STATUS BAR BASED ON NUMBER OF CLICKS?
}
void aftercookinganim(){
  frameRate(1);
plate=loadImage("plate.png");
plate.resize(90,40);
image(plate,70,428);
image(ing,90,432);
frameRate(20);
level++;

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


