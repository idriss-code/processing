size(300,300);
  
PImage imgSrc = loadImage("test.jpg");
windowResize(imgSrc.width, imgSrc.height);

PImage imgDest = createImage(imgSrc.width, imgSrc.height , RGB);

imgSrc.loadPixels();
for (int i = 0; i < imgSrc.pixels.length; i++) {
  
  int colorSrc =  imgSrc.pixels[i];
  
  float grey = red(colorSrc) * 0.2126 + green(colorSrc) * 0.7152 + blue(colorSrc) * 0.0722;
  
  imgDest.pixels[i] = color(grey); 
}
imgDest.updatePixels();

image(imgDest, 0, 0);

save("test2.jpg");
