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
  //String


void setup(){
  size(800, 600);
}

void draw(){
  // Street
  background(69, 71, 80);
    // S sidewalk
    fill(180, 174, 173);
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
    fill(26, 113, 232);
    // S Sky
    rect(0, 25, 800, 75);
    //S clouds
    fill(250, 250, 250);
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
  fill(58, 137, 47);
    // F back legs
    ellipse(frogX - 12, frogY + 10, backFrogLeg1, backFrogLeg2);
    ellipse(frogX + 12, frogY + 10, backFrogLeg3, backFrogLeg4);
    // F front legs
    ellipse(frogX - 12, frogY - 10, frontFrogLeg1, frontFrogLeg2);
    ellipse(frogX + 12, frogY - 10, frontFrogLeg3, frontFrogLeg4);
    // F body
    ellipse(frogX, frogY, frogBody1, frogBody2);
    fill(250, 36, 13);
    // F eyes
    ellipse(frogX - frogEye1X, frogY - frogEye1Y, 7, 7);
    ellipse(frogX + frogEye2X, frogY - frogEye2Y, 7, 7);
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
                  frontFrogLeg1 = 7;
                  frontFrogLeg2 = 19;
                  
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
                  frontFrogLeg1 = 7;
                  frontFrogLeg2 = 19;
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
                  frontFrogLeg1 = 19;
                  frontFrogLeg2 = 7;
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
                  backFrogLeg1 = 25;
                  backFrogLeg2 = 10;
                  frontFrogLeg1 = 19;
                  frontFrogLeg2 = 7;
                  frogEye1X = 10;
                  frogEye2X = -10;
                  frogEye1Y = 5;
                  frogEye2Y = -5;
            }
        }
    }
}

void Car(){
  
}
