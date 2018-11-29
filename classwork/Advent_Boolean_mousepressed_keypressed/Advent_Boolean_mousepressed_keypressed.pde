color bgcolor, rectcolor;

void setup() {
  size(500, 500);
  bgcolor = color(0);
}

void draw() {
  background(bgcolor);
  rectMode(CENTER);

  if (mousePressed) {
    if (mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 -50 && mouseY < height/2 + 50) {
      rectcolor = color(255, 0, 255);
    }
  }
  fill(rectcolor);
  rect(width/2, height/2, 100, 100);

  rectcolor = color(255);
}

void keyPressed() {
  bgcolor = color(random(255), random(255), random(255));
}
