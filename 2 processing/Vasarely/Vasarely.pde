size(1500, 1100);

int col = 15;
int row = 11;
int colWidth = width / col;
int rowHeight = height / row;

float radiusRatio = 0.9;

noStroke();

for (int i=0; i<col; i++){
 for (int j=0; j<row;  j++){
  fill(random(255));
  rect(i*colWidth,j*rowHeight,colWidth,rowHeight);
  fill(random(255));
  int radius = (int)(min(colWidth,rowHeight) * radiusRatio);
  circle(i * colWidth + colWidth / 2, j * rowHeight + rowHeight / 2, radius);
   
 }
}
