class Ship {
  PImage img = loadImage("ariel.png");
  PVector location;
  PVector velocity;

  Ship() {
   location = new PVector (width/2, height-50);
   velocity = new PVector (15, 0);

  }

  void update() {
  }

  void show() {
    fill(255);
    image(img, location.x, location.y);
  }

  void mLeft() {
    location.sub(velocity);    
    if (location.x < 0) {
      location.x = 0;
    }
  }

  void mRight() {
    location.add(velocity);
    if (location.x > width -50) {
      location.x = width - 50;
    }
  }
  void shoot() {
    Bullet bullet = new Bullet();
    bullets.add(bullet);
  }

  void hitCheck() {
    for (int i = 0; i < bullets2.size(); i++) {
      Bullet2 b2 = (Bullet2) bullets2.get(i);
      float distBetween = dist(b2.x, b2.y, location.x, location.y);
      if (distBetween < 18 && b2.velocity > 0) {
        lives -=1;
        if (lives < 0){
        lives = 0;
        }
      }
    }
  }

  void die() {
    location.x = width/2;
  }
}
