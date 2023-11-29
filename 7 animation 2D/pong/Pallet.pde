class Pallet{
    
   int x;
   int y;
   int w;
   int h;
 
   Pallet(int x, int y, int w, int h){
      this.x = x;
      this.y = y;
      this.w = w;
      this.h = h;
   }
   
   void draw(){
      rect(this.x,this.y,this.w,this.h);
   }
 
   boolean collision(Balle balle){
     return 
      collision(balle.x,balle.y + balle.r) ||
      collision(balle.x + balle.r,balle.y) ||
      collision(balle.x,balle.y - balle.r) ||
      collision(balle.x - balle.r,balle.y);
   }
   
   boolean collision(int x,int y){
        return x >= this.x 
          && x < this.x +this.w
          && y >= this.y 
          && y < this.y + this.h;
   }
 
}
