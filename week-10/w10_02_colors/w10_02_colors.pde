// code 1 FA 18
// bryan ma

// color variable practice

// this sketch creates a single color variable, loads a color into it
// with the color() function, and then uses it to draw the background.

// change the color variable to an array of color variables. add as many
// as you like. then in the draw loop, set the background to some color
// in the array. this might look like: 

// background(c[whichColor]);

// use either conditional logic or a modulo operator to have which color 
// is being used by background() change periodically. see the example gif.


color c1 = #ffffff;
color c2 = #e6ffe6;
color c3 = #b3ffb3;
color c4 = #80ff80;
color c5 = #4dff4d;
color c6 = #00e600;
color c7 = #00b300;
color c8 = #008000;
color c9 = #006600;
color c10 = #003300;


color [] c = {c1, c2, c3, c4, c5, c6, c7, c8, c9, c10};


void setup() {
  size (500,500);
  
for (int i = 0; i < c.length; i ++) {
    c[i]= color (c[int(random(0,10))]);
    
  }
}

void draw() {
  if (frameCount % 60 == 0){
  background(c[floor(random(0, 10))]);
  }
}
