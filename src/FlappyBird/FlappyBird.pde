int x = 250;
int y = 250;
int x1 = 500;
int y1 = 400;

void setup() {
  size(500, 500);
}

void draw() {
  background(33, 240, 240);
  fill(255, 255, 255);
  ellipse(x1, y1, 50, 50);
  ellipse(x1 + 25, y1 + 15, 50, 50);
  ellipse(x1 - 25, y1 + 15, 50, 50);
  rect(x1 - 25, y1 + 15, 50, 25);
  x1 = x1 - 2;
  if (x1 == -50){
    x1 = 550;
  }
  fill(0, 0, 0);
  fill(255, 0, 0);
  stroke(255, 255, 255);
  ellipse(x, y, 25, 25);
  y = y + 3;
  if (mousePressed){
     y = y - 25; 
  }
}
