// this sketch has the ellipse change colors 
// whenever the mouse button is pressed. 

// change the sketch so that the ellipse only changes 
// colors when the mouse is pressed INSIDE the ellipse.



void setup() {
  size(600, 600);
}

void draw() {

  background(150);
  float r = 200;
  float d = dist(width/2, height/2, mouseX, mouseY);
  if (mousePressed && d <= r/2) {
    fill(255);
  } else {
    fill(150);
  }

  ellipse(width/2, height/2, r, r);
}
