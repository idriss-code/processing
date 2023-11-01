import controlP5.*;

ControlP5 cp5;

int r;
int v;
int b;

void setup() {
  size(700,400);
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("r")
   .setPosition(10,50)
   .setSize(255,30)
   .setColorActive(color(255,0,0))
   .setColorForeground(color(200,0,0))
   .setRange(0,255)
   ;
   
     cp5.addSlider("v")
   .setPosition(10,100)
   .setSize(255,30)
   .setColorActive(color(0,255,0))
   .setColorForeground(color(0,200,0))
   .setRange(0,255)
   ;
   
     cp5.addSlider("b")
   .setPosition(10,150)
   .setSize(255,30)
   .setColorActive(color(0,0,255))
   .setColorForeground(color(0,0,200))
   .setRange(0,255)
   ;
}


void draw(){
  background(150);
  
  
  fill(r,v,b);
  noStroke();
  rect(300,50,300,300);
}
