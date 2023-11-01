void setup(){
  size(400,400);
  smooth();
  background(255);
  noCursor();
}

void draw(){
//  background(0);
  int x = mouseX;
  int y = mouseY;
  int x2 = -x + width;
  fill(0);
  ellipse(x,y,10,10);
  ellipse(x2,y,10,10);
}
