void setup(){

  size(800, 950);
  
  int sw = 15;
  int margin = sw/2;
  
  int oX1 = margin;
  int oY1 = margin;
  
  int oX2 = width - margin;
  int oY2 = height - margin;
  
  int x = 200;
  int y = 700;
  
  strokeWeight(sw);
  
  drawRect(oX1, oY1, oX2, oY2);
  
  fill(255,0,0);
  drawRect(x, oY1, oX2, y);
  
  fill(33,0,176);
  drawRect(oX1, y, x, oY2);
  
  int y2 = 200;
  fill(255);
  drawRect(oX1, oY1, x, y2);
  
  int x2 = 650;
  fill(255);
  drawRect(x2, y, oX2, oY2);
  
  int y3 = 825;
  fill(255,255,0);
  drawRect(x2, y3, oX2, oY2);
  
  save("result.jpg");

}

void drawRect(int x1, int y1, int x2 , int y2 ){
  rect(x1, y1, x2 - x1, y2 - y1);
}
