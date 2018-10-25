// this sketch draws a pattern by moving a rotating 
// line from the top to bottom of the screen, and 
// then over to the right, then repeating. 

// change the sketch so that it draws from left to right, 
// then down, instead. change either the translate function 
// or the conditional to do this.

float x = 100; 
float y = 0;

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount + y));
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
  x+=5;
  
  if (x > width + 100) {
    y += 70;
    x = - 100;
  }

}
