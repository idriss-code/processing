size(1500 , 600);


for(int i=0;i<width;i++){
 
  int grey =  255 - (int)((float)i/width * 255);
  
  stroke(grey);
  line(i,0,i,height);
  
}


int grey = 125;

int nb = 5;
int space = width/nb;
fill(grey);
noStroke();

for(int i=1;i<nb;i++){
 
  int  w = width/nb/5;
    
  rect(i*space - w/2,height/3,w,height/3);
  
}
  
save("contrastes.png");
