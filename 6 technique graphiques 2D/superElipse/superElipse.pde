float t = -3.14;


void setup(){
 size(800,600); 
}

void draw(){
  
  float a = 1.5;
  float b = 1;
  float n = 1.5;
  
 float x = pow(a*cos(t),(n));
 float y = pow(b*sin(t),(n));
 
 point(x * 100 + 400,y *100 + 300);
 
  println(sin(t));
 println(y);
 
 t += 0.1; 
  
}
