void setup() {
  size (500, 500);
}

void draw() {

  //key - stores last pressed alphanumeric / symbol key
  //keycode - stores a number representing the last pressed alphanumeric / symbol key
  //println(key);
  //println(keyCode == ENTER);

  if (keyPressed) {
    if (key == CODED) {
      println(keyCode);
    } else {
      println(key);
    }
  }
}
