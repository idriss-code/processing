class Slider {
  
  private int value = 128;
  private int x = 0;
  private int y = 0;
  private int h = 30;
  private int w = 255;
  private boolean isIn = false;
  
  private int r = 100;
  private int v = 100;
  private int b = 100;
  
  Slider(int x, int y){
     this.x = x;
     this.y = y; 
  }
  
  void draw(){
      stroke(255);
     if(this.isIn){
       strokeWeight(2);
     }else{
       strokeWeight(1);
     }
   
     fill(150);
     rect(this.x,this.y,this.w,this.h);
        
     fill(this.r, this.v, this.b);
     rect(this.x,this.y,this.value,this.h);
  }
  
  boolean isIn(int x, int y){
      boolean okx = (x >= this.x) && (x <= this.x+this.w);
      boolean oky = (y >= this.y) && (y <= this.y+this.h);
      return (okx && oky);
  }
  
  void update(){
     this.isIn = this.isIn(mouseX, mouseY);
     
     if(this.isIn && mousePressed){
       int localX = mouseX - this.x;
       this.value = localX;
     }
  }
  
  int getVal(){
     return this.value; 
  }
  
  Slider setColor(int r, int v, int b){
    this.r = r;
    this.v = v;
    this.b = b;
    
    return this; 
  }
}
