
void setup(){
  size(800,600);
  noStroke();
  

}

void draw(){
  background(0);
  
  int size = mouseX;
  

  
  
  
  if(size <= 0)
    size = 1;
    
      int x = 1;
  int y = mouseY/size;
  
  int cX = (width/2) / size;
  int cY = (height/2) / size;
  
  
  dligne(cX,cY,x,y,size);
}





void dligne(int x1, int y1, int x2, int y2, int size)
{
  int d, dx, dy, aincr, bincr, xincr, yincr, x, y;

  if (abs(x2 - x1) < abs(y2 - y1)) {
    /* parcours par l'axe vertical */

    if (y1 > y2) {
      //echangerEntiers(&x1, &x2);
        int t = x1;
        x1 = x2;
        x2 = t;
      
      //echangerEntiers(&y1, &y2);
        t = y1;
        y1 = y2;
        y2 = t;
    }

    xincr = x2 > x1 ? 1 : -1;
    dy = y2 - y1;
    dx = abs(x2 - x1);
    d = 2 * dx - dy;
    aincr = 2 * (dx - dy);
    bincr = 2 * dx;
    x = x1;
    y = y1;

    dpixel(x, y, size);

    for (y = y1+1; y <= y2; ++y) {
      if (d >= 0) {
        x += xincr;
        d += aincr;
      } else
        d += bincr;

      dpixel(x, y, size);
    }

  } else {
    /* parcours par l'axe horizontal */

    if (x1 > x2) {
      //echangerEntiers(&x1, &x2);
        int t = x1;
        x1 = x2;
        x2 = t;
      
      //echangerEntiers(&y1, &y2);
        t = y1;
        y1 = y2;
        y2 = t;
    }

    yincr = y2 > y1 ? 1 : -1;
    dx = x2 - x1;
    dy = abs(y2 - y1);
    d = 2 * dy - dx;
    aincr = 2 * (dy - dx);
    bincr = 2 * dy;
    x = x1;
    y = y1;

    dpixel(x, y, size);

    for (x = x1+1; x <= x2; ++x) {
      if (d >= 0) {
        y += yincr;
        d += aincr;
      } else
        d += bincr;

      dpixel(x, y, size);
    }
  }
}


void dpixel(int x, int y, int size)
{
 if(size <= 1){
   point(x, y);
 }else{
   rect(x * size, y * size, size,size);
   
 }
  
}
