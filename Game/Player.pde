class Player {
  int mode, numObjects; // what the character is currently doing and the number of objects that the character is carrying
  /*Constants for mode values (possible actions of the character)
   N = walking towards the screen
   S = walking away from the screen
   W = walking to the right
   E = walking to the left
   */
  int STANDING = 0;
  int N_WALKING = 1;
  int S_WALKING = 2;
  int W_WALKING = 3;
  int E_WALKING = 4;
  int NW_WALKING = 5;
  int NE_WALKING = 6;
  int SW_WALKING = 7;
  int SE_WALKING = 8;
  int dy, dx; 

  Player() {
  }
}

