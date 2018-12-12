//This final project was inspired by Coding Challenge #5: Space Invaders in JavaScript with p5.js originally 
//created by Daniel Shiffman https://www.youtube.com/watch?v=biN3v3ef-Y0&t=1284s, it is also inspired by one 
//online coding tutorial https://processingtutorials.wordpress.com/2013/05/28/space-invaders/

//all of the pixel arts inculued in this sketch is created by Ruihan Xia

PImage bg;
Ship ship;
ArrayList bullets;
ArrayList bullets2;
ArrayList enemies;

int numCol = 10;
Target testEnmy;
boolean rightPressed = false, leftPressed = false; 

float squareSize;
float squareSize2;

int score;
int lives = 5;


void setup() {
  size(600, 400);
  bg = loadImage("bg.jpg");
  ship = new Ship();

  bullets = new ArrayList();
  bullets2 = new ArrayList();
  squareSize = 10;
  squareSize2 = 15;

  enemies = new ArrayList();
  generateEnemies();
}

void draw() {
  background(bg); 

  ship.show(); 
  ship.hitCheck();
  handleEnemies();
  handleBullets();
  handleBullets2();
  displayText();

  congratulations();
  youDied();
}

void generateEnemies() {
  for (int i = 0; i < 20; i++) {
    float x = width * 0.1 + i%numCol*50;
    float y = 25 + int(i/numCol)*60;
    enemies.add(new Target (x, y));
  }
}

void handleEnemies() {
  for (int i = 0; i < enemies.size(); i++) {
    Target enemy = (Target) enemies.get(i);
    enemy.update();
    enemy.show();
    enemy.hitCheck();
    if (random(1) > 0.997) {
      enemy.shoot();
    }
  }
}

void handleBullets() {
  for (int i = 0; i < bullets.size(); i++) {
    Bullet b = (Bullet) bullets.get(i);
    b.move();
    b.display();
  }
}

void handleBullets2() {
  for (int i = 0; i < bullets2.size(); i++) {
    Bullet2 b2 = (Bullet2) bullets2.get(i);
    b2.move();
    b2.display();
  }
}

void moveShip() {
  if (rightPressed) {
    ship.location.x -= 15;
  }
  if (leftPressed) {
    ship.location.x += 10;
  }
}

void keyPressed() {
  if (key == 'a') {
    ship.mLeft();
    rightPressed = true;
  } else {
    if (key == 'd') {
      ship.mRight();
      leftPressed = true;
    } else {
      if (key == ' ') {
        ship.shoot();
      }
    }
  }
}

void keyReleased() {
  if (key == 'a') {
    rightPressed = false;
  } else {
    if (key == 'd') {
      leftPressed = false;
    }
  }
}

void displayText() {
  fill(255);
  textSize(9);
  text("SCORE: "+score, 10, 15);
  text("LIVES: "+lives, 10, 25);
  text("A: LEFT", 10, 35);
  text("D: RIGHT", 10, 45);
  text("SPACE: SHOOT", 10, 55);
}

void congratulations() {
  if (score > 390 && lives > 0) {
    textSize(50);
    fill (255,0,0);
    text("CONGRATULATIONS!", width/2-250, height/2);
  }
}

void youDied() {
  if (lives == 0) {
    textSize(50);
    text("YOU DIED!", width/2-120, height/2);
  }
}
