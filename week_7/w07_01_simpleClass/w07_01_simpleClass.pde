// Code_1_FA18
// Week 7
// Bryan Ma

// this is the "Cookie" class sketch we wrote in class.

// create 2 or more additional class definitions. 
// these classes aren't used for actually programming any visuals so they can 
//  be totally abstract and print text only just as the Cookie class does. 

// The first new class you make should represent some other kind of common object.
// give it fields and methods, as well as a custom constructor.
// The second new class you create should have its own object instance of the Cookie 
//  (or other) class. For example, maybe a Cookie Jar class would have an 
//  ArrayList of type Cookie. 

int i;
int j;

void setup() {


  Cookie raysCookie = new Cookie ("chocolate", "tiny", "happily");
  raysCookie.cookieInfo();

  Drink raysDrink = new Drink ("gingerale", "large", "excited");
  raysDrink.drinkInfo();

  Lunch raysLunch = new Lunch(0, 1, "with heart");
  raysLunch.lunchInfo();
  
  
}

void draw() {
}

class Cookie {
  String kind;
  String size;

  Cookie(String whatKind, String whatSize, String mood) {
    println("baked new " + whatSize + " " + whatKind + " cookie!");
    eat(mood + ".");
    kind = whatKind;
    size = whatSize;
  }

  void cookieInfo() {
    println("This cookie is a " + size + " " + kind + " cookie!");
  }

  void eat(String mood) {
    println("Ray eat the cookie " + mood);
  }

  String getSize() {
    return size;
  }
}


class Drink {
  String kind;
  String size;

  Drink(String whatKind, String whatSize, String mood) {
    println("purchased new " + whatSize + " " + whatKind + " drink!");
    enjoy(mood + ".");
    kind = whatKind;
    size = whatSize;
  }
  void drinkInfo() {
    println("This drink is a " + size + " " + kind + " drink!");
  }

  void enjoy(String mood) {
    println("Ray enjoy the drink " + mood);
  }

  String getSize() {
    return size;
  }
}


class Lunch {
  String[][]lunchtype = {
    {"chocolate", "penaut better", "custard cream"}, 
    {"gingerale", "diet coke", "coconut water"}
  };
  
  Lunch(int i, int j, String mood) {

    println("cooked today's " + lunchtype[0][i] + " cookie, with " + lunchtype[1][j] + " lunch!");
    have(mood + "!");
  }

  void lunchInfo() { 
    String[][]lunchtype = {
      {"chocolate", "penaut better", "custard cream"}, 
      {"gingerale", "diet coke", "coconut water"}
    };
    println("Ray's lunch contains " + lunchtype[0][i] + " cooike, and " + lunchtype[1][j] + " ; it is delicious!");
  }

  void have(String mood) {
    println("Ray enjoy the lunch " + mood);
  }

  String getLunch() {
    return lunchtype[i][j];
  }
}
