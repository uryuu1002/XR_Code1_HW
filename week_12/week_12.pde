float a = 0.0;
float aVelocity = 0.0;
float aAcceleration = 0.001;

void setup(){
 size(600,600); 
 rectMode(CENTER);
}

void draw(){
background(255);

aAcceleration = map(mouseX,0,width,-0.001, 0.001);

a += aVelocity;
aVelocity += aAcceleration;

if (mousePressed==true){
  fill(random(255));
  stroke(random(255),random(255),random(255));
}
translate(width/2,height/2);
noFill();
for(int d = 500; d>0;d-=10){
rect(0,0,d,d);
rotate(a);

}
}
