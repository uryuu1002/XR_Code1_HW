// Code_1_FA18
// Week 7
// Bryan Ma

// this sketch creates 10 instances of a ball class. 
// it does this in the setup() function in a loop instead of 
//  doing it based on mouse presses as we did in class.

// review this approach, then create your own class that draws
//  a different visual to the screen with its own behavior. 
//  it could be abstract or more explicit. think about how to 
//  parameterize your object's constructor. once you've created 
//  a class like this, create a number of instances of your 
//  class on the canvas by any means you prefer.

color[] mycolors = {#cce5ff, #99caff, #4da3ff, #007bff, #0063cc, #003e80, #001933};
color c1=(mycolors[int(random(0, 6))]);  //assigns a random color from above to c1-4 
color c2=(mycolors[int(random(0, 6))]); 
color c3=(mycolors[int(random(0, 6))]); 
color c4=(mycolors[int(random(0, 6))]); 
color c5=(mycolors[int(random(0, 6))]); 
color c6=(mycolors[int(random(0, 6))]); 

ArrayList<Triangle> pattern = new ArrayList<Triangle>();


void setup() {
  size(500, 500);
  colorMode(HSB);

  for (int i = 0; i < 10; i++) {
    pattern.add(new Triangle(random(width/2), random(height/2)));
  }
}

void draw() {
  background(30);
  for (int i = 0; i < pattern.size(); i++) {
    Triangle triangles = pattern.get(i);
    triangles.mousePressed();
    triangles.update();
  }
}

class Triangle {
  // what does it have and do? 
  // create the variables
  // position x,y
  // velocity x,y
  float px;
  float py;
  float dx;
  float dy;
  float s;
  float sp;

  // create the constructor
  Triangle (float px, float py) {
    this.px = px;
    this.py = py;
    this.dx = random(-10, 20);
    this.dy = random(-10, 20);
    this.s = random(10, 50);
    this.sp = 50;
  }

  // draw to the screen
  void mousePressed() {
    background(255);
    stroke(0);
    smooth();


    for (int px = 0; px < 500; px = px + 100) {
      for (int py = 0; py <500; py = py + 100) {
        fill(c1);
        triangle(px, py, px, py+s, px+s, py+s);
        fill(c3);
        triangle(px, py, px+s, py, px+s, py+s);
        //fill(c2);
        //triangle(this.px+sp, this.py+s, this.px+s+sp, this.py+s, this.px+s+sp, this.py);
        //fill(c4);
        //triangle(this.px+sp, this.py+s, this.px+sp, this.py, this.px+s+sp, this.py);
        //fill(c6);
        //triangle(this.px, this.py+s+sp, this.px+s, this.py+s+sp, this.px+s, this.py+sp);
        //fill(c5);
        //triangle(this.px, this.py+s+sp, this.px, this.py+sp, this.px+s, this.py+sp);
        fill(c2);
        ellipse(this.py+sp, this.px+s, this.s, this.s);
        fill(c4);
        ellipse(this.px+sp, this.py+s, this.s, this.s);
        fill(c6);
        ellipse(this.py, this.px+s+sp, this.s, this.s);
        fill(c5);
        ellipse(this.px, this.py+s+sp, this.s, this.s);
      }
    }
  }
  // update its position and velocity.
  void update() {
    px += this.dx;
    py += this.dy;

    // check if it goes off
    if (this.px > width-this.s/2 || this.px < this.s/2) {
      this.dx *= -1;
    }
    if (this.py > height-this.s/2 || this.py < this.s/2) {
      this.dy *= -1;
    }
  }
}
