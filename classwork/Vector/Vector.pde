PVector position;
PVector velocity;
float drag;

void setup(){
  size(600,600);
  position = new PVector(100, 100);
  velocity = new PVector(random(-5,5), random(-5,5));
  //drag = 0.99;
}

void draw(){
  ellipse (position.x, position.y, 100,100); 
  //float angle = atan2( , );
  //position.add(velocity);
  // multiply
  //velocity.mult(drag);
  PVector diff = new PVector (mouseX - position.x, mouseY - position.y);
  diff.normalize();
  diff.mult(10);
  position.add(diff);
  
  if (position.x > width || position.x <0 ){
    velocity.x = -velocity.x;
  }
  
  if (position.y > height || position.y<0){
    velocity.y = - velocity.y;
  }
}
