class DraggableIcon {
  
  public int x = 0;
  public int y = 0;
  public int h = 20;
  public int w = 20;
  
  private boolean isDragued;
  
  boolean isInClicked(){
   return  this.isIn(mouseX, mouseY) && mousePressed;
  }
  
  
  DraggableIcon(int x, int y){
     this.x = x;
     this.y = y; 
  }
  
  void draw(){
     stroke(255);
     if(this.isDragued){
       fill(0);
     }else if(this.isIn(mouseX, mouseY)){
       fill(150);
     }else{
       fill(255);
     }

     rect(this.x,this.y,this.w,this.h);
  }
  
  boolean isIn(int x, int y){
      boolean okx = (x >= this.x) && (x <= this.x+this.w);
      boolean oky = (y >= this.y) && (y <= this.y+this.h);
      return (okx && oky);
  }
  
  void update(){
     
    if(this.isDragued){
      this.isDragued = mousePressed;
    }else{
      this.isDragued = isInClicked();
    }

    if(this.isDragued){
      this.x = mouseX - this.w / 2;
      this.y = mouseY - this.h / 2; 
    }
  }
  
}
