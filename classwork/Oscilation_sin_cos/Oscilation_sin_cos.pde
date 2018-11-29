//Notes on Trig, circular movements
//sin is used to map something on the verticle direction: y
//cos is used to map something on the horrizontal direction: x

float counter = 0;

void setup(){  
  size (500,500);
}

void draw(){
  //background(200);
  counter += TWO_PI/500;
  float s = sin (radians(frameCount)) * 100;
  float x = width/2 + cos(counter) * 100;
  float y = height/2 + sin (counter*5) * cos(counter*1)*100;
  float y2 = height/2 + cos (counter*5) * 100;
  
  // sin is always looking for the range between 0 and 2π
  // TWO_PI is the same with radians(360)
  println(sin(360));
  println(sin(TWO_PI));
  println(sin(radians(360)));
  
  println(sin(PI/2));
  println(sin(radians(90)));
  
  //ellipse(width/2 - 100, y , s,s);
  //ellipse(x, y2, s, s);
  ellipse(x, y, 50, 50);
}
