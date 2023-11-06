
int cx;
int cy;

void setup() {
  size(400,400);

  cx = width/2;
  cy = height/2;
}

void draw() {
    background(255);
    int num = mouseX;

  // attention à la division par zero !!
    num = num == 0 ? 1 : num;
    
    float xR = (float)width/num;
    float yR = (float)height/num;
    
    for(int i = 0;i < num; i++){
      
      line(xR * i,0,cx,cy);
      line(width - xR * i,height,cx,cy);
      
      line(width,yR * i,cx,cy);
      line(0, height - yR * i,cx,cy);
    }
}
