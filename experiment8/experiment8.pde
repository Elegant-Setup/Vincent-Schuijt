PImage img;
int smallPoint, largePoint;

void setup() {
  size(600, 607);
  img = loadImage("victory.png");
  smallPoint = 8;
  largePoint = 20;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, +5000);
  rect(x, y, pointillize, pointillize);
}
