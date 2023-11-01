int[] numbers = new int[50];

int barreWidth;

void setup(){
  size(600,400);
  colorMode(HSB, height);
  
  barreWidth = width / numbers.length;
  print(barreWidth);

  generateNumbers();

}

void draw(){
  
  background(150);
  
  for(int i=0; i<numbers.length; i++){
    drawBarre(i, numbers[i]);
  }
}

void drawBarre(int index, int value){
  
  fill(value,value*2,height);
  
  rect(index*barreWidth,height - value,barreWidth,value);
}

void generateNumbers(){
  for(int i=0; i<numbers.length; i++){
    numbers[i] = (int)random(height); 
  }
}

void keyPressed() {
  generateNumbers();
}
