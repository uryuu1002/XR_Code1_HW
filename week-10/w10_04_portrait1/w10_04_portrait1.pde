// code 1 FA 18
// bryan ma

// generative portrait 1

// this sketch, as well as w10_05_portrait2, uses the basic approach we used
// in class to create a generative representation of an image loaded into memory.
// use one of these two sketches as the starting point to create your own 
// generative graphic "portrait". try using red(), green(), blue(), saturation(), 
// hue(), and brightness() to get values to represent in your drawing.

// bonus - apply a class inspired by w10_03_paintbrush to your approach.
// instead of drawing a simple ellipse or other shape, create an instance 
// of the brushstroke class at every sourced point that you get() the color on.

// in the case of w10_05_portrait2, they would all need to be loaded into 
// an arraylist and drawn all together, as well as modified in order to have 
// a particle-like lifetime, or something similar.

PImage img;
int num = 1000;

float[]x= new float[num];
float[]y= new float[num];
float[]dx= new float[num];
float[]dy= new float[num];

void setup() {
  size(479, 400);
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
}
