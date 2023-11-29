Balle balle;

Pallet lp;
Pallet rp;

void setup(){
   size(800,600); 
   balle = new Balle(width/2,height/2,int(random(-10,10)),int(random(-10,10)));
   
   int pw = 20;
   int ph = 100;
   
   lp = new Pallet(0,0,pw,ph);
   rp = new Pallet(width - pw,0,pw,ph);
}

void draw(){
    background(0);
    balle.update();
    
    if(lp.collision(balle)){
      balle.vx = -balle.vx;
      
    }
    
    if(rp.collision(balle)){
      balle.vx = -balle.vx;
      
    }
    
    balle.draw();
    lp.draw();
    rp.draw();
}

void keyPressed()
{
   if (key == 'q'){
       lp.y+=10;
   }
   
    if (key == 'a'){
       lp.y-=10;
    }
     
   if (key == 'm'){
       rp.y+=10;
   }
   
    if (key == 'p'){
       rp.y-=10;
    }
}
