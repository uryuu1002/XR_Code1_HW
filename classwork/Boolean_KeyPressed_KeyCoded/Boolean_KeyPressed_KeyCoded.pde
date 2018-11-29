boolean up;
boolean down;
boolean right;
boolean left;
float x,y;

void setup(){
  size(500,500);
}

void draw(){
  background(0);
  float s = 50;
  translate(width/2, height/2);
  ellipse(x, y, s, s);
  
  if (up){
  y -= 5;
  }
  if (down){
  y += 5;
  }
  if (right){
  x += 5;
  }
  if (left){
  x -= 5;
  }

}

void keyPressed(){
  if (key == CODED){
    if (keyCode == UP){
      up = true;
    } else if (keyCode == DOWN){
      down = true;
    } else if (keyCode == RIGHT){
      right = true;
    } else if (keyCode == LEFT){
      left = true;
    }
  }
}

void keyReleased(){
  if (key == CODED){
    if (keyCode == UP){
      up = false;
    } else if (keyCode == DOWN){
      down = false;
    } else if (keyCode == RIGHT){
      right = false;
    } else if (keyCode == LEFT){
      left = false;
    }
  }
}
