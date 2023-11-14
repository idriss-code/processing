size(300,300);
  
PImage imgSrc = loadImage("test2.jpg");
windowResize(imgSrc.width, imgSrc.height);

  float GN = 255;
  float GB = 0;

imgSrc.loadPixels();
for (int i = 0; i < imgSrc.pixels.length; i++) {
  float cc = brightness(imgSrc.pixels[i]);
  if(cc < GN){
    GN = cc;
  }
  
  if(cc > GB){
    GB = cc;
  }
  
}


for (int i = 0; i < imgSrc.width; i++) {
  for (int j = 0; j < imgSrc.height; j++) {
  
  float colorSrc =  brightness(imgSrc.get(i,j));
  
  float S = (GN+GB)/2;
  float ERR;

  int c;
  
  if(colorSrc > S){
    c = 255;
    ERR = colorSrc - GB;
  }else{
    c = 0;
    ERR = colorSrc - GN;
  }
  
  imgSrc.set(i,j,color(c));
  
  colorSrc =  brightness(imgSrc.get(i+1,j));
  imgSrc.set(i+1,j,color(colorSrc + 3*ERR/8));
  
  colorSrc =  brightness(imgSrc.get(i,j+1));
  imgSrc.set(i,j+1,color(colorSrc + 3*ERR/8));
  
  colorSrc =  brightness(imgSrc.get(i+1,j+1));
  imgSrc.set(i+1,j+1,color(colorSrc + ERR/4));
  }
}


image(imgSrc, 0, 0);
