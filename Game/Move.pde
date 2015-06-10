class move{
int steps=0;
PImage front, right, left;
int xcoor=600;
int ycoor=200;

void walk(){
  if(moveRight){
    xcoor+=speed;
    image(player.right, xcoor,ycoor);
  }
}


}

//character move, able to make one recipe
