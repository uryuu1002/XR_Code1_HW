// code 1 FA 18
// bryan ma

// Saves one PDF of the contents of the display window each time the mouse is pressed.

// this code is taken from the processing examples in libraries/pdf export. 

// adapt this code to your portrait, and print out the resulting PDF.

import processing.pdf.*;

boolean saveOneFrame = false;

PImage img;
int num = 1000;

float[]x= new float[num];
float[]y= new float[num];
float[]dx= new float[num];
float[]dy= new float[num];

void setup() {
  size(600, 600);
  frameRate(24);
  img = loadImage("400.jpeg");
  background(255);
  noStroke();
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2;
    y[i] = height/2;
    dx[i] = random(-10, 10);
    dy[i] = random(-10, 10);
  }
}

void draw() {
  if (saveOneFrame == true) {
    beginRecord(PDF, "screenshot.pdf");
  }

  background(255);
  for (int i = 0; i < x.length; i++) {
    float s = 30;
    //int x = int(random(width));
    //int y = int(random(height));


    color c = img.get(int(x[i]), int(y[i]));

    fill(red(c), green(c), blue(c), random(80, 100));

    ellipse(x[i], y[i], s, s);

    x[i] += dx[i];
    y[i] += dy[i];

    if (x[i] > width-s/2||x[i]< s/2) {
      dx[i] = -dx[i];
    }

    if (y[i] > height-s/2||y[i]<s/2)
      dy[i] = -dy[i];
  }


  if (saveOneFrame == true) {
    endRecord();
    saveOneFrame = false;
  }
}

void mousePressed() {
  saveOneFrame = true;
}
