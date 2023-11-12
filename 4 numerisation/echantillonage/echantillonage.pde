
PImage img;

//image(img, 0, 0);






void setup(){
  
  size(300,300);
  noStroke();

  img = loadImage("test.jpg");
  
}

void draw(){
  
  background(0);
  
  int pixelSize = max(1,mouseX);

  for(int i=0;i<width/pixelSize;i++){
    for(int j=0;j<height/pixelSize;j++){
   
      color c = img.get(i*pixelSize,j*pixelSize);
      fill(c);
      rect(i*pixelSize,j*pixelSize,pixelSize,pixelSize);      
    }
  }
}
