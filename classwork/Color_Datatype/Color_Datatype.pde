color c;
// c is an instance of the color datatype
// color is not technically a class. which is why lowercase.
// red(), green(), blue()

void setup() {
  size(600, 600);

// #FF9900 = FF (RED)  99 (GREEN)  00 (BLUE)
  color hexColor = #FF9900;
  background(hexColor);
}

void draw() {
  fill(c);
  c = color (map(mouseX, 0, width, 0, 255), 
    map(mouseY, 0, height, 0, 255), 
    blue (c), 10);
    
// brightness() hue() saturation()
  println(brightness(c));
  ellipse(mouseX, mouseY, 200, 200);
}
