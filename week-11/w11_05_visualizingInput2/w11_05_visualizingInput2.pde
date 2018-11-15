// code 1 FA18
// bryan ma

// visualizing key presses 2

// see previous sketch w11_05_visualizingInput2 for instructions.


//RAY'S NOTE: I tried to combine visual effects from previous homework (weeK7+week10)
//it looks kind of awkward and need to be improved.

Brushstroke b;
color c; 

PImage img;
ArrayList<MyClass> myArrayList = new ArrayList<MyClass>();


int x;
int y;
boolean newKeyShape = false;
boolean newMouseShape = false;

void setup() {
  size(800, 800);
  img = loadImage("vinyl.png");
}

void draw() {
  
  if (newKeyShape) {
    if (frameCount % 30 == 0) {
      myArrayList.add(new MyClass(random(width), random(height)));
    }

    for (int i = 0; i < myArrayList.size(); i++) {
      MyClass obj = myArrayList.get(i);
      obj.update();
      obj.display();
    }

    for (int i = myArrayList.size() - 1; i >= 0; i--) {
      MyClass obj = myArrayList.get(i);
      if (obj.isTimeUp() == true) {
        myArrayList.remove(i);
      }
    }
    newKeyShape = false;
  }
  
  
  if (newMouseShape) {
    c = color(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 100, 255), 175); 
    if (mousePressed) {
      if (frameCount % 1 == 0) {
        b = new Brushstroke(mouseX, mouseY);
      }

      if (b != null) {
        b.update();
        b.display(c);
      }
    }
    newMouseShape = false;
  }
}

void keyPressed() {
  setPosition();
  newKeyShape = true;
}

void mousePressed() {
  setPosition2();
  newMouseShape = true;
}

void setPosition() {
  x = int(random(width));
  y = int(random(height));
}

void setPosition2(){
  x = mouseX;
  y = mouseY;
}

class Brushstroke {
  float x, y;
  float vx, vy;
  float siz;
  float lifetime = 10;
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

class MyClass {
  float x; 
  float y;
  float timeRemaining;

  MyClass(float x, float y) {
    this.x = x;
    this.y = y;
    this.timeRemaining = 180;
  }

  void update() {
    timeRemaining--;
  }

  void display() {
    image(img, x, y, timeRemaining, timeRemaining);
  }

  boolean isTimeUp() {
    if (timeRemaining <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
