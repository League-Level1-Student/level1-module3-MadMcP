int r = 144;
int g = 212;
int b = 242;

int r1 = 255;
int g1 = 255;
int b1 = 255;

int r2 = 240;
int g2 = 233;
int b2 = 177;

int r3 = 192;
int g3 = 240;
int b3 = 177;

int r4 = 106;
int g4 = 196;
int b4 = 77;

int f = 255;

float vel = 1;
float grav = 0.5;

String text = " ";
int x = 175;
float y = 250;
int x1 = 350;
int y1 = 375;
int x2 = 500;
int y2 = 450;
int upperPipeHeight = (int) random(100, 275);
int lowerY = upperPipeHeight + 150;

void setup() {
  size(350, 500);
}

void draw() {
 // background(0, 0, 0)
  //fill(106, 196, 77)
  background(r, g, b);
  fill(106, 196, 77);
  text(text, 115, 250);
  textSize(30);
  fill(r2, g2, b2);
  rect(0, 450, 350, 50);
  fill(r3, g3, b3);
  rect(0, 425, 350, 25);
  fill(r1, g1, b1);
  ellipse(x1, y1, 50, 50);
  ellipse(x1 + 25, y1 + 15, 50, 50);
  ellipse(x1 - 25, y1 + 15, 50, 50);
  rect(x1 - 25, y1 + 15, 50, 25);
  x1 = x1 - 4;
  if (x1 <= -50){
    x1 = 400;
  }
  fill(0, 0, 0);
  fill(255, 0, 0);
  stroke(f, f, f);
  ellipse(x, y, 25, 25);
  y += vel;
  vel += grav;
  
  if (mousePressed){

  }
  fill(r4, g4, b4);
  rect(x2, lowerY, 50, 450);
  rect(x2, 0, 50, upperPipeHeight);
  x2 = x2 - 5;
  if (x2 == -50){
    x2 = 350;
    upperPipeHeight = (int) random(100, 270);
    lowerY = upperPipeHeight + 150;
  }
  boolean gameover = intersectsPipes() || intersectsGround();
  if (gameover == true) {
   f = 0;
   r = 0;
   g = 0;
   b = 0;
   r1 = 0;
   g1 = 0;
   b1 = 0;
   r2 = 0;
   g2 = 0;
   b2 = 0;
   r3 = 0;
   g3 = 0;
   b3 = 0;
   r4 = 0;
   g4 = 0;
   b4 = 0;
   text = "Gameover";
   
  }
}

boolean intersectsPipes() { 
         if (y < upperPipeHeight && x > x2 && x < (x2 + 50)){
            return true; }
        else if (y > upperPipeHeight + 125 && x > x2 && x < (x2 + 50)) {
            return true; }
        else { return false; }
}

boolean intersectsGround() {
  if (y > 425) {
    return true;
  }
  else { return false; }
}
void mousePressed(){
       vel = -5; 
}
