class Balle{
   int x;
   int y;
   int vx;
   int vy;
   int r = 20;
 
 Balle(int x, int y, int vx, int vy){
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
 }
 
 void draw(){
    circle(this.x,this.y,this.r*2);
 }
 
 void update(){
    this.x += this.vx;
    this.y += this.vy;
    
    /*
    if(this.x - r <0){
      this.x = r;
      this.vx = -this.vx;
    }else if(this.x + r>width){
      this.x = width - r;
      this.vx = -this.vx;
    }
    */
        
    if(this.y - r <0){
      this.y = r;
      this.vy = -this.vy;
    }else if(this.y + r>height){
      this.y = height - r;
      this.vy = -this.vy;
    }
 }
 
}
