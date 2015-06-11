class InstructionsText {
  String line1 = "Welcome to __________!";
  String line2 = "In this game, you will attempt to discover a variety of recipes for common diner breakfasts.";
  String line3 = "You will be given a set of ingredients and tools, with which you can create different combinations of foods.";
  String line4 = "Using a mouse-controlled character, you can move around the kitchen and move"; 
  String line5 = "a maximum of two ingredients at a time.";
  String line6 = "You win when you discover all of the recipes!";
  String line7 = "Note: you can return to the main menu at any time using the spacebar.";

  String getLine(int i) {
    if (i == 1) {
      return line1;
    }
    if (i == 2) {
      return line2;
    }
    if (i == 3) {
      return line3;
    }
    if (i == 4) {
      return line4;
    }
    if (i == 5) {
      return line5;
    }
    if (i == 6) {
      return line6;
    }
    return line7;
  }
}

