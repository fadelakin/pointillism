PImage img;
int smallPoint, largePoint;

void setup() {
  // change the size to your pictures dimensions
  size(1200, 800);
  
  // change ("img.jpg"); to your own image that you put in the root folder
  // or you can change it to any of the other images included

  // DOTS TAKE TOO LONG TO POPULATE
  
  // TODO
  // MAYBE IMPLEMENT A METHOD WHERE THE PROGRAM
  // TAKES THE PICTURE AND RESIZES IT TO FIT THE WINDOW
  // CHANGE ALGORITHM TO INCREASE SPEED TIME


  img = loadImage("glass.jpg");
  smallPoint = 25;
  largePoint = 100;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
