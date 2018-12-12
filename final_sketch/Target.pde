class Target {

  float x, y, z;
  float velocity = 5;


  PImage img;

  Target(float x, float y) {
    this.x = x;
    this.y = y;
    this.velocity = 5;

    img = loadImage( "ursela.png");
  }

  void update() {
    this.x += this.velocity;
    if (this.x > width * 0.9) {
      this.x = width * 0.9;
      this.velocity *= -1;
      this.y += 30;
    }

    if (this.x < width * 0.1) {
      this.velocity *= -1;
      this.x = width * 0.1;
      this.y += 30;
    }
  }

  void show() {  
    image(img, this.x, this.y, 30, 30);
  }

  void shoot() {
    Bullet2 b2 = new Bullet2(this.x, this.y, 5);
    bullets2.add(b2);
  }

  void hitCheck() {
    for (int i = 0; i < bullets.size(); i++) {
      Bullet b = (Bullet) bullets.get(i);
      float distBetween = dist(b.location.x, b.location.y, this.x, this.y);
      if (distBetween < 13 && b.velocity.y < 0) {
        enemies.remove(this);
        score += 20;
      }
    }
  }
}
