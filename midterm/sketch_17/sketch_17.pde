// this array creates two arrays of floats but with 
// no size, and with no effect in the draw loop. 

// fix the sketch so that the arrays have some size 
// and values, and are then used to draw something to 
// the screen in the draw loop. 

// finally, add behavior that changes the value of each 
// float in the loop every frame. try to add more arrays 
// (for colors, angles, etc) if there is behavior that 
// you want to change that doesn't involve positions.

int num = 100;

float[] xPositions = new float [num];
float[] yPositions = new float [num];

void setup() {
  size(600, 600);
  stroke(255);

  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(width);
  }
  for (int j = 0; j < yPositions.length; j++) {
    yPositions[j] = random(height);
  }
}

void draw() {
  background(100);

  for (int i = 0; i < xPositions.length; i++) {
    float size = map (i, 0, xPositions. length, 300, 10);
    fill(map(i, 0, xPositions.length, 10, 255));
    rect(xPositions[i], yPositions[i], size, size);
  }
  for (int i = 0; i < yPositions.length; i++) {
    xPositions[i] -= map (i, 0, xPositions.length, 1, 20);
    float size = map (i, 0, xPositions.length, 300, 10);
    if (xPositions[i] < size/2) {
      xPositions[i] = width + size/2;
    }
    yPositions[i] += map(noise(i * 0.001), 0, 1, -1, 1);
  }
}
