class Bullet2 {
  PImage img = loadImage("poison.png");
  float x, y;
  float velocity;

  Bullet2(float x, float y, float velocity) {
    this.x = x;
    this.y = y;
    this.velocity = velocity;
  }

  void display() {
    image(img, this.x, this.y);
  }

  void move() {
    this.y += this.velocity;
  }
}
