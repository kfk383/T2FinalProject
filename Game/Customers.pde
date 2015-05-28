class Customers {
  int willPay, patience;
  boolean hasOrdered;
  int itemOrdered;

  void go(){
    int s = second();
    if (s%30 == 0){
      patience--;
    }if (patience == 0){
      leave(); // will remove the character and his/her order from the screen
    }
  }
  void leave(){

  }
  boolean isMine(int item){
    return itemOrdered == item;
  }
  int pay(){
    return willPay;
  }


}

