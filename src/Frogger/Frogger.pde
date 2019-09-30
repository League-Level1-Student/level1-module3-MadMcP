//variables
  //int
  int frogX = 400;
  int frogY = 537;
  int frogBody1 = 20;
  int frogBody2 = 40;
  int backFrogLeg1 = 10;
  int backFrogLeg2 = 25;
  int backFrogLeg3 = 10;
  int backFrogLeg4 = 25;
  int frontFrogLeg1 = 7;
  int frontFrogLeg2 = 19;
  int frontFrogLeg3 = 7;
  int frontFrogLeg4 = 19;
  int cloudX = 750;
  int cloudY = 40;
  int frogEye1X = 5;
  int frogEye2X = 5;
  int frogEye1Y = 15;
  int frogEye2Y = 15;
  //Fill
  int bgR = 69;
  int bgB = 71;
  int bgG = 80;
  int swR = 180;
  int swB = 174;
  int swG = 173;
  int sR = 26;
  int sB = 113;
  int sG = 232;
  int cR = 250;
  int cB = 250;
  int cG = 250;
  int fR = 58;
  int fB = 137;
  int fG = 47;
  int feR = 250;
  int feB = 36;
  int feG = 13;
  int caR = 245;
  int caG = 173;
  int caB = 17;
  int bgR1 = 193;
  int bgB1 = 192;
  int bgG1 = 198;
  
  //String
  String text = "";
  
  //Car
  Car carA = new Car(-100, 210, 100, -9);
  Car carB = new Car(800, 285, 100, 6);
  Car carC = new Car(-100, 360, 100, -7);
  Car carD = new Car(800, 435, 100, 5);


void setup(){
  size(800, 600);
}

void draw(){
  // Street
  background(bgR, bgB, bgG);
  fill (bgR1, bgB1, bgG1);
  text(text, 350, 300);
    // S sidewalk
    fill(swR, swB, swG);
      // Ss Up
      rect(0, 500, 800, 100);
      // Ss Down
      rect(0, 100, 800, 100);
      //Ss Lines
      fill(69, 71, 80);
        //SsL Up
        line(100, 200, 100, 100);
        line(200, 200, 200, 100);
        line(300, 200, 300, 100);
        line(400, 200, 400, 100);
        line(500, 200, 500, 100);
        line(600, 200, 600, 100);
        line(700, 200, 700, 100);
        //SsL Down
        line(100, 600, 100, 500);
        line(200, 600, 200, 500);
        line(300, 600, 300, 500);
        line(400, 600, 400, 500);
        line(500, 600, 500, 500);
        line(600, 600, 600, 500);
        line(700, 600, 700, 500);
        // Ss dLines
        fill(250, 243, 18);
          //Ssd 1
          line(025, 275, 075, 275);
          line(125, 275, 175, 275);
          line(225, 275, 275, 275);
          line(325, 275, 375, 275);
          line(425, 275, 475, 275);
          line(525, 275, 575, 275);
          line(625, 275, 675, 275);
          line(725, 275, 775, 275);
          //Ssd 2
          line(025, 350, 075, 350);
          line(125, 350, 175, 350);
          line(225, 350, 275, 350);
          line(325, 350, 375, 350);
          line(425, 350, 475, 350);
          line(525, 350, 575, 350);
          line(625, 350, 675, 350);
          line(725, 350, 775, 350);
          //Ssd3
          line(025, 425, 075, 425);
          line(125, 425, 175, 425);
          line(225, 425, 275, 425);
          line(325, 425, 375, 425);
          line(425, 425, 475, 425);
          line(525, 425, 575, 425);
          line(625, 425, 675, 425);
          line(725, 425, 775, 425);
          
  // Sky
    fill(sR, sB, sG);
    // S Sky
    rect(0, 25, 800, 75);
    //S clouds
    fill(cR, cB, cG);
    ellipse(cloudX, cloudY, 43, 23);
    ellipse(cloudX - 30, cloudY + 22, 45, 28);
    ellipse(cloudX + 25, cloudY + 35, 45, 25);
    cloudX = cloudX - 1;
    if (cloudX <= -50){
     cloudX = 850; 
    }
  
  //Fill Space
  fill(0, 0, 0);
  rect(0, 0, 800, 25);
    //text
    fill(106, 196, 77);
    text("Frogger || Level 1", 337, 20);
    textSize(15);
    
  // Frog
  fill(fR, fB, fG);
    // F back legs
    ellipse(frogX - 12, frogY + 10, backFrogLeg1, backFrogLeg2);
    ellipse(frogX + 12, frogY + 10, backFrogLeg3, backFrogLeg4);
    // F front legs
    ellipse(frogX - 12, frogY - 10, frontFrogLeg1, frontFrogLeg2);
    ellipse(frogX + 12, frogY - 10, frontFrogLeg3, frontFrogLeg4);
    // F body
    ellipse(frogX, frogY, frogBody1, frogBody2);
    fill(feR, feB, feG);
    // F eyes
    ellipse(frogX - frogEye1X, frogY - frogEye1Y, 7, 7);
    ellipse(frogX + frogEye2X, frogY - frogEye2Y, 7, 7);

  //Car
  carA.display();
  carB.display();
  carC.display();
  carD.display();
  
  if (frogY <= 200){
    stroke(28, 56, 211);
    bgR = 28;
    bgB = 56;
    bgG = 211;
    swR = 28;
    swB = 56;
    swG = 211;
    sR = 28;
    sB = 56;
    sG = 211;
    cR = 28;
    cB = 56;
    cG = 211;
    fR = 28;
    fB = 56;
    fG = 211;
    feR = 28;
    feB = 56;
    feG = 211;
    caR = 28;
    caG = 56;
    caB = 211;
    text = "You win!";
  }
  
  boolean carIntercepts1 = intersects(carA);
  if (carIntercepts1){
    stroke(28, 56, 211);
    bgR = 28;
    bgB = 56;
    bgG = 211;
    swR = 28;
    swB = 56;
    swG = 211;
    sR = 28;
    sB = 56;
    sG = 211;
    cR = 28;
    cB = 56;
    cG = 211;
    fR = 28;
    fB = 56;
    fG = 211;
    feR = 28;
    feB = 56;
    feG = 211;
    caR = 28;
    caG = 56;
    caB = 211;
    text = "Gameover";
  }
  boolean carIntercepts2 = intersects(carB);
  if (carIntercepts2){
    stroke(28, 56, 211);
    bgR = 28;
    bgB = 56;
    bgG = 211;
    swR = 28;
    swB = 56;
    swG = 211;
    sR = 28;
    sB = 56;
    sG = 211;
    cR = 28;
    cB = 56;
    cG = 211;
    fR = 28;
    fB = 56;
    fG = 211;
    feR = 28;
    feB = 56;
    feG = 211;
    caR = 28;
    caG = 56;
    caB = 211;
    text = "Gameover";
  }
  boolean carIntercepts3 = intersects(carC);
  if (carIntercepts3){
    stroke(28, 56, 211);
    bgR = 28;
    bgB = 56;
    bgG = 211;
    swR = 28;
    swB = 56;
    swG = 211;
    sR = 28;
    sB = 56;
    sG = 211;
    cR = 28;
    cB = 56;
    cG = 211;
    fR = 28;
    fB = 56;
    fG = 211;
    feR = 28;
    feB = 56;
    feG = 211;
    caR = 28;
    caG = 56;
    caB = 211;
    text = "Gameover";
  }
  boolean carIntercepts4 = intersects(carD);
  if (carIntercepts4){
    stroke(28, 56, 211);
    bgR = 28;
    bgB = 56;
    bgG = 211;
    swR = 28;
    swB = 56;
    swG = 211;
    sR = 28;
    sB = 56;
    sG = 211;
    cR = 28;
    cB = 56;
    cG = 211;
    fR = 28;
    fB = 56;
    fG = 211;
    feR = 28;
    feB = 56;
    feG = 211;
    caR = 28;
    caG = 56;
    caB = 211;
    text = "Gameover";
  }
}

void keyPressed(){
    if(key == CODED){
        if(frogY > 187){
            if(keyCode == UP)
            {
                  //Frog Y position goes up
                  frogY = frogY - 75;
                  frogBody1 = 20;
                  frogBody2 = 40;

                  backFrogLeg1 = 10;
                  backFrogLeg2 = 25;
                  backFrogLeg3 = 10;
                  backFrogLeg4 = 25;
                  frontFrogLeg1 = 7;
                  frontFrogLeg2 = 19;
                  frontFrogLeg3 = 7;
                  frontFrogLeg4 = 19;
                  
                  frogEye1X = 5;
                  frogEye2X = 5;
                  frogEye1Y = 15;
                  frogEye2Y = 15;
            }
        }
        if(frogY < 537) {
            if(keyCode == DOWN)
            {
                  //Frog Y position goes down
                  frogY = frogY + 75;
                  frogBody1 = 20;
                  frogBody2 = 40;
                  
                  backFrogLeg1 = 10;
                  backFrogLeg2 = 25;
                  backFrogLeg3 = 10;
                  backFrogLeg4 = 25;
                  frontFrogLeg1 = 7;
                  frontFrogLeg2 = 19;
                  frontFrogLeg3 = 7;
                  frontFrogLeg4 = 19;
                  
                  frogEye1X = 5;
                  frogEye2X = 5;
                  frogEye1Y = -15;
                  frogEye2Y = -15;
            }
        }
        if(frogX < 800){
            if(keyCode == RIGHT)
            {
                  //Frog X position goes right
                  frogX = frogX + 50;
                  frogBody1 = 40;
                  frogBody2 = 20;
                  
                  backFrogLeg1 = 25;
                  backFrogLeg2 = 10;
                  backFrogLeg3 = 19;
                  backFrogLeg4 = 7;
                  frontFrogLeg1 = 25;
                  frontFrogLeg2 = 10;
                  frontFrogLeg3 = 19;
                  frontFrogLeg4 = 7;
                  
                  frogEye1X = -10;
                  frogEye2X = 10;
                  frogEye1Y = 5;
                  frogEye2Y = -5;
            }
        }
        if(frogX > 0){
            if(keyCode == LEFT)
            {
                  //Frog X position goes left
                  frogX = frogX - 50;
                  frogBody1 = 40;
                  frogBody2 = 20;
                  
                  backFrogLeg1 = 19;
                  backFrogLeg2 = 7;
                  backFrogLeg3 = 25;
                  backFrogLeg4 =10;
                  frontFrogLeg1 = 19;
                  frontFrogLeg2 = 7;
                  frontFrogLeg3 = 25;
                  frontFrogLeg4 = 10;
                  
                  frogEye1X = 10;
                  frogEye2X = -10;
                  frogEye1Y = 5;
                  frogEye2Y = -5;
            }
        }
    }
}

class Car {
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  
  Car(int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
  }
  
  void display() {
      fill(caR, caG, caB);
      rect(carX, carY, carSize, 50);
      carX = carX - carSpeed;
      if (carX <= -100){
        carX = 800;
      }
      else if (carX >= 800){
        carX = 0;
      }
  }
  
  int getX(){
    int CarX = carX;
    return CarX;
  }
  
  int getY(){
    int CarY = carY;
    return CarY;
  }
  
  int getSize(){
    int CarSize = carSize;
    return CarSize;
  }
  
}

boolean intersects(Car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else
      {
             return false;
      }
  }
