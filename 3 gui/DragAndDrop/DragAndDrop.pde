DraggableIcon di;

int x = 300;
int y = 50;
int w = 300;
int h = 300;

void setup(){
 size(800,600);
 di = new DraggableIcon(10,10);
}

void draw(){
  background(150);
  di.update();

  if(boxCollision(x, y, w, h, di.x, di.y, di.w, di.h)){
    fill(255);
  }else{
    fill(0);
  }
  
  rect(x,y,w,h);
  
  di.draw();
}

boolean boxCollision(int r1x, int r1y, int r1w, int r1h, int r2x, int r2y, int r2w, int r2h){
  return 
    r1x + r1w >= r2x &&
    r1x <= r2x + r2w &&
    r1y + r1h >= r2y &&
    r1y <= r2y + r2h;
}
