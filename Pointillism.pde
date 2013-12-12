PImage img;
int smallPoint, largePoint;

void setup() {
  // change the size to your pictures dimensions
  size(500, 332);
  
  // change ("img.jpg"); to your own image that you put in the root folder
  // or you can change it to any of the other images included
  img = loadImage("img.jpg");
  smallPoint = 4;
  largePoint = 40;
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
