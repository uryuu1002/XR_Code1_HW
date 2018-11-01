// code 1 FA 18
// bryan ma

// this code starts setting up two arrays - 
// one to hold strings, another to hold PImages.

// set up the sketch so that the arrayOfImagePaths
// is set up to contain a collection of image filenames
// located in the sketch folder. make sure the arrayOfPImages 
// is also set up to contain the same number of items. 

// once the arrays are working, use the draw loop to display
// all the images by looping through the results of filling the
// arrayOfPImages. 

String[] arrayOfImageFilenames = new String [3];
PImage[] arrayOfPImages = new PImage [3];
PowerPuffGirls [] photos = new PowerPuffGirls[3];


void setup() {
  size(600, 600);

  for (int i = 0; i < photos.length; i++) {
    arrayOfPImages[i] = loadImage("PPG" + i + ".png");
  }
  for (int i = 0; i < photos.length; i++) {
    photos[i] = new PowerPuffGirls(arrayOfPImages[i], random(0, width), random(0, height));
  }
}

void draw() {
  for (int i = 0; i < photos.length; i++) {
    photos[i].update();
    photos[i].display();
  }
}

class PowerPuffGirls {

  float x;
  float y;
  PImage img;
  String name;

  PowerPuffGirls(PImage tempImg, float x, float y) {
    this.x = x;
    this.y = y;
    img = tempImg;
  }

  void update() {
    y--;
  }

  void display() {
    for (int i = 0; i < arrayOfPImages.length; i++) {
      image(img, x, y);
      println("PPG" + i + ".png");
    }
  }
}
