class Recipes {
  boolean carrying, tool;
  //click on ingredients, animation to show you clicked on the right ingredients, click on correct appliance, animation of ingredients cooking
  //first recipe: scrambled eggs(frying pan), boiled egg, cheese sandwich(need bread), pancakes, waffles,hashbrowns,cereal  
  PImage[] ingred;
  PImage ing;
  void cook(int x, int y){
          
            ing=loadImage("eggt.png");
            image(ing,100,200);
          
          //else{text("w=uggghhh", 600,50);
       //   }
     //clickegg is not true meaning that checkInventory is not working and the string array is not updating     
         
         
  }
    
}
//910,188
//31,25


/*
for recipes:
first does user have ingredient required in inventory
next user clicks on correct tool?
next animation
click on tool and ingredient will appear. if final image matches what you need you win round.*/

