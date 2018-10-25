float speed = 10;

Star s;

class Star {
  float x;
  float y;
  float z;

  float life = 255; 


  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
  }

  void update() {
    ;
    z -= speed;
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
    }

    life -= 2;
  }

  boolean isFar() {
    if (life <= 0) {
      return true;
    } else {
      return false;
    }
  }

  
  void display() {   
    fill(0, life);
    noStroke();

    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    float r = map(z, 0, width, 10, 0);
    ellipse(sx, sy, r, r);

    float px = map(x/z, 0, 1, 0, width);
    float py = map(y/z, 0, 1, 0, height);
    stroke(0, life);
    strokeWeight(1/2);
    line(px, py, x, y);
  }
}
