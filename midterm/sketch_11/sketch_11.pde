// the for loop looks like it should be drawing 
// 10 rectangles to the screen, but it's only drawing one. 

// fix the scope of the x integer so that all 10 
// rectangles are drawn to the screen.


void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  for (int i = 0; i < width; i = i+60) {
    rect(i, 150, 30, 300);;
  }
}
