

void setup(){
  size(800,800);


}

void draw(){
  
  background(0);
  Point[] points;
  points = new Point[4];
  points[0] = new Point(500,10);
  points[1] = new Point(mouseX,mouseY);
  points[2] = new Point(50,700);
  points[3] = new Point(650,650);
  
  stroke(255,0,0);
  DrawRecurs(points,8);
}

Point milieu(Point a,Point b){
  return new Point((a.x + b.x)/2,(a.y + b.y)/2);
}

void DrawRecurs(Point[] points,int deep){
   
  Point[] points2 = new Point[3];

  for(int i=0; i<3; i++){
    line(points[i].x,points[i].y,points[i+1].x,points[i+1].y);
    points2[i] = milieu(points[i],points[i+1]);
  }
  
  Point[] points3 = new Point[2];
  stroke(0,255,0);  
  for(int i=0; i<2; i++){
    //line(points2[i].x,points2[i].y,points2[i+1].x,points2[i+1].y);
    points3[i] = milieu(points2[i],points2[i+1]);
  }
  
  //line(points3[0].x,points3[0].y,points3[1].x,points3[1].y);
  Point fin = milieu(points3[0],points3[1]);
  
  noStroke();
  fill(125,125,255);
  circle(fin.x,fin.y,3);
  strokeWeight(1);
  deep --;
  
  if(deep > 0){
    Point[] pointsL = new Point[4];
    pointsL[0] = points[0];
    pointsL[1] = points2[0];
    pointsL[2] = points3[0];
    pointsL[3] = fin;
    
    DrawRecurs(pointsL,deep);
    
    Point[] pointsR = new Point[4];
    pointsR[0] = points[3];
    pointsR[1] = points2[2];
    pointsR[2] = points3[1];
    pointsR[3] = fin;
    
    DrawRecurs(pointsR,deep);
  }

}
