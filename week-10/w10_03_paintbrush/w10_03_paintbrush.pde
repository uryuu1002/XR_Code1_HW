// code 1 FA 18
// bryan ma

// color variable as class field

// this sketch uses a basic ball or particle-type behavior
// to create a "painting" kind of effect. while the mouse is 
// pressed, a new instance is created every five frames. 

// change the class definition of "Brushstroke" to have a 
// color field. Then change the constructor arguments to accept 
// a color argument, which should set the object's color field. 

// finally, update the line of code which creates new brushstrokes
// to accept a color value. try using a color value which maps to 
// the position of the mouse on the screen. see the example gif
// to get an idea.


// RAY'S NOTE: same thing happened with w10_02 where the color array is created but
//the when displaying, it only shows one color

Brushstroke b;

color c; 
void setup() {
  size(600, 600);
  background(255);
}

void draw() {
  c = color(map(mouseX, 0,width, 0,255), map(mouseY, 0,height, 100,255), 175); 
  if (mousePressed) {
    if (frameCount % 5 == 0) {
      b = new Brushstroke(mouseX, mouseY);
    }

    if (b != null) {
      b.update();
      b.display(c);
    }
  }
}


class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;
  color [] whichColor = {c1, c2, c3, c4, c5, c6, c7, c8, c9, c10};
  color c;

  Brushstroke(float x, float y) {
    this.x = x;
    this.y = y;
    vx = random(-8, 8);
    vy = random(-8, 8);
    siz = random(30, 60);
  }

  void update() {
    x += vx;
    y += vy;
  }

  void display(color c) {
    this.c = c; 
    fill(c);
    noStroke();
    ellipse(x, y, siz, siz);
  }
}
