// code 1 FA 18
// bryan ma

// generative portrait 2

// see description in w10_04_portrait1

// RAY'S NOTE: Really not understanding what is asking for (already checked the description)
// desperate and just changed it into a mosaic.. didn't understand what needs be turned into
// an arraylist.. will ask Courtney for help

PImage img;



void setup() {
  size(479, 400);
  img = loadImage("400.jpeg");
  background(255);
  noStroke();
}

void draw() {
  background(255);
  for (int i = 0; i < img.width; i+=20) {
    for (int j = 0; j < img.height; j+=20) {
      color c = img.get(i, j);
      float b = saturation(c);
      fill(b);
      rect(i, j, 20, 20);
    }
  }
}
