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
     int gravity = 1;
     this.vy += gravity;
   
    this.x += this.vx;
    this.y += this.vy;
        
    if(this.y - r <0){
      this.y = r;
      rebond();
    }else if(this.y + r>height){
      this.y = height - r;
      rebond();
    }
 }
 
 void rebond(){
   this.vy = -this.vy;
   this.vy = (int)(this.vy * 0.95);
   this.vx = (int)(this.vx * 0.95);
 }
 
}
