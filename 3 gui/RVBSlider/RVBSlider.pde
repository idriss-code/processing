Slider r;
Slider v;
Slider b;

void setup(){
  size(800, 600);
  r = new Slider(10,50);
  r.setColor(255,0,0);
  v = new Slider(10,100);
  v.setColor(0,255,0);
  b = new Slider(10,150);
  b.setColor(0,0,255);
}

void draw(){
  background(150);
  
  r.update();
  v.update();
  b.update();
  
  r.draw();
  v.draw();
  b.draw();
  
  fill(r.getVal(),v.getVal(),b.getVal());
  noStroke();
  rect(300,50,300,300);
}
