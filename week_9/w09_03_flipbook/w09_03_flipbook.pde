// code 1 FA 18
// bryan ma

// this code is adapted from the Processing example "Sequential" by James Paterson.
// this sketch loads in 12 separate images into an array of PImages, then plays
// them sequentially in the draw loop.

// i will explain the "%" operator in class.

// create your own image sequence. 
// then change the sketch to load in and display your image sequence.

// once you've done this, adapt the image sequence to be part of a class behavior.
// imagine the "Mario" object we've discussed in class - animating a character 
// like that could be done in this way - creating the class to contain an array 
// of images, and having the class's display method cycle through the frames.  

int numFrames = 8;  // The number of frames in the animation
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
TalkingRay [] rays = new TalkingRay[8];

void setup() {
  size(800, 800);
  frameRate(24);
  imageMode(CENTER);
  //for (int i = 0; i < images.length; i++) {
  //  images[i] = loadImage("IMG" + i + ".png");
  //}
  images[0]  = loadImage("IMG0.jpg");
  images[1]  = loadImage("IMG1.jpg"); 
  images[2]  = loadImage("IMG2.jpg");
  images[3]  = loadImage("IMG3.jpg"); 
  images[4]  = loadImage("IMG4.jpg");
  images[5]  = loadImage("IMG5.jpg"); 
  images[6]  = loadImage("IMG6.jpg");
  images[7]  = loadImage("IMG7.jpg");

  for (int i = 0; i < rays.length; i++) {
    rays[i] = new TalkingRay(images[i]);
  }
} 

void draw() { 
  background(0);
  //currentFrame = (currentFrame+1) % numFrames;
  //image(images[currentFrame], width/2, height/2);
  for (int i = 0; i < rays.length; i++) {
    rays[i].display();
  }
}

class TalkingRay {

  TalkingRay(PImage img) {
  }

  void update() {
  }

  void display() {
    currentFrame = (currentFrame+1) % numFrames;
    image(images[currentFrame], width/2, height/2);
  }
}
