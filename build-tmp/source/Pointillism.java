import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Pointillism extends PApplet {

PImage img;
int smallPoint, largePoint;

public void setup() {
  // change the size to your pictures dimensions
  size(1024, 660);
  
  // change ("img.jpg"); to your own image that you put in the root folder
  // or you can change it to any of the other images included
  img = loadImage("img.jpg");
  smallPoint = 1;
  largePoint = 50;
  imageMode(CENTER);
  noStroke();
  background(255);
}

public void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = PApplet.parseInt(random(img.width));
  int y = PApplet.parseInt(random(img.height));
  int pix = img.get(x, y);
  fill(pix, 128);
  ellipse(x, y, pointillize, pointillize);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Pointillism" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
