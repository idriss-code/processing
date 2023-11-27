/*
Ecrire un algorithme qui traite deux images Id et If de mêmes dimensions LxH et qui
produit N images de morphing intermédiaires. Dans un morphing "linéaire" pour des
images en niveau de gris, la valeur du pixel In[x,y] pour la n-ième image intermédiaire
est :
In[x,y] = (N-n)/N * Id[x,y] + (n/N) * If[x,y] avec n = 0..N
Ecrire ensuite un programme Processing qui met en œuvre cet algorithme.
*/
PImage img1;
PImage img2;
PImage img3;

int frame;

int frameMax = 500;

boolean forward = true;



void setup(){
  size(300,300);
    
  img1 = loadImage("image1.jpg");
  img1.loadPixels();
  img2 = loadImage("image2.jpg");
  img2.loadPixels();
  img3 = createImage(300, 300, RGB);
  img3.loadPixels();
  
  frame = 0;
}

void draw(){
  
  for (int i = 0; i < img1.pixels.length; i++) {
  
  float colorImg1 =  brightness(img1.pixels[i]);
  float colorImg2 =  brightness(img2.pixels[i]);
  
  img3.pixels[i] = color(calculGrey(colorImg1,colorImg2,frame,frameMax));
  img3.updatePixels();
  
  }
  
  if(forward){
      frame ++;
      if (frame > frameMax){
        frame = frameMax;
        forward = !forward;
      }
  }else{
      frame --;
      if (frame < 0){
        frame = 0;
        forward = !forward;
      }
  }

 
  
  image(img3, 0, 0);
}

float calculGrey(float Id, float If, int n, int N){
  return (float)(N-n)/N * Id + ((float)n/N) * If;
}
