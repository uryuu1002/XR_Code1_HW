class Bullet {
  PImage img = loadImage("bubble.png");
  PVector location;
  PVector velocity;


  Bullet() {
    location = new PVector(ship.location.x, ship.location.y);
    velocity = new PVector(0, -5);
    
  }

  void display() {
    image(img,location.x, location.y);
  }

  void move() {
    location.add(velocity);
  }
}
