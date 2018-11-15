// code 1 FA 18
// bryan ma

// typing words 1

// this sketch defines a class that displays a word on the screen.
// so far it only creates a single one. 
// the next sketch, w11_03_typingWords2, checks for typing input, adds the 
// result to a string, and when ENTER is pressed, prints it to the console 
// and clears the string.

// combine these two sketches so that typing and pressing enter creates
// a new instance of this 'Word' class and adds it to an arraylist. 
// then loop through the arraylist to call display() on all added words. 

// finally, once you've completed that, add some custom visuals or behavior 
// the Word class.

String letters = "";
Word w;

void setup() {
  size(600, 600);
  w = new Word(width/2, 50);
}

void draw() {
}

void keyPressed() {
  background(0);
  textSize(16);
  textAlign(CENTER);
  w.display();
}

class Word {

  String letters = "";
  float x, y;
  float ex, ey;
  float dx, dy;

  Word(float x, float y) {
    this.x = x;
    this.y = y;
    this.dx = x;
    this.dy = y;
  }

  void display() {
    if ((key == ENTER) || (key == RETURN)) {
      println(letters);
      letters = "";
      background(255, 0, 0);
    } else if ((key > 31) && (key != CODED)) {
      float size = 100;
      letters = letters + key;


      ellipse(ex, ey, size, size);
      fill(random(0, 255));
      ex += dx;
      ey += dy;

      if (ex > width-size/2 || ex < size/2) {
        dx = -dx;
      }

      if (ey > height-size/2 ||ey < size/2) {
        dy = - dy;
      }
    }
    textSize(50);
    text(letters, x, y);
  }
}
