int startX;
int startY;
int endX;
int endY;
int lights = (int)(Math.random()*101);
int[] windowX = {5, 5, 105, 145, 240, 300, 344, 385,480, 620, 675, 755, 755};
int[] windowY = {290, 640, 690, 540, 741, 680, 580, 730, 560, 725, 520, 420, 670};
int windowSize = 20;

void setup() {
  size(780, 780);
  startX = (int)(Math.random()*780);
  startY = 0;
  endX = startX;
  endY = startY;
  frameRate(13);
  smooth();
  background(0);
}

void draw() {
 
  strokeWeight((float)(Math.random()*5)+2);

  while (endX < 780 && endY < 780) {   
    endX = startX + ((int)(Math.random()*78)-39);
    endY = startY + ((int)(Math.random()*78));

    int c = ((int)(Math.random()*255)+255);
    int a = ((int)(Math.random()*255)+255);
    int y = ((int)(Math.random()*255)+200);
    stroke(c, a, y);
    line(startX, startY, endX, endY);

    startX = endX; 
    startY = endY;
  }
    int frequency = 2;
    if(frameCount % frequency == 0) {
      noStroke();
      fill(0,0,0,191);
      rect(0,0,780,780);
      //delay(100);
    }
    
  stroke(0);
  strokeWeight(0.01);
  fill(26, 26, 26);
  rect(0, 260, 50, 520);
  rect(50, 520, 130, 320);   
  rect(180, 580, 104, 200); 
  rect(284, 450, 140, 330);
  rect(424, 550, 130, 230);
  rect(554, 610, 104, 170);
  rect(658, 390, 122, 390);

  int windows = 290;
  int window = 5; 

  while (windows < 780 && window < 780) { 
    //fill(0,0,0);
    //if(mousePressed){
    //  fill(255, 255, 100);
    //  if (millis()/1000%6<3 && frameCount%7<1)
    //  fill(0);    
    //}
    //building 1
    if(lights == 1) {
      fill(255, 255, 100);
    } else {
      fill(0,0,0);
    }  
    rect(window, windows, 20, 20);    
    //building2
    rect(window + 60, windows + 250, 20, 20);
    rect(window + 100, windows + 250, 20, 20);
    rect(window + 140, windows + 250, 20, 20);
    //building 3
    rect(window + 190, windows + 300, 20, 20);
    rect(window + 235, windows + 300, 20, 20);
    //building4
    rect(window + 295, windows + 190, 20, 20);
    rect(window + 339, windows + 190, 20, 20);
    rect(window + 380, windows + 190, 20, 20);
    //building 5
    rect(window + 435, windows + 270, 20, 20);
    rect(window + 475, windows + 270, 20, 20);
    rect(window + 515, windows + 270, 20, 20);
    //building 6
    rect(window + 565, windows + 335, 20, 20);
    rect(window + 615, windows + 335, 20, 20);
    //building 7
    rect(window + 670, windows + 130, 20, 20);
    rect(window + 710, windows + 130, 20, 20);
    rect(window + 750, windows + 130, 20, 20);

    windows = windows + 50;
  }  
  for(int i = 0; i < 13; i++) {
    if(lights < 39) {
      fill(255, 255, 100);
      if (millis()/1000%5<3 && frameCount%12<1)
      fill(0);
    } else {
      fill(0);
    }
    rect(windowX[i], windowY[i], windowSize, windowSize);
  
  }
  
    if(mousePressed){
      lights = (int)(Math.random()*101);
    }
}


void mousePressed() {  
  startX = (int)(Math.random()*780);
  startY = 0;
  endX = startX;
  endY = startY;
}

/*
int startX;
 int startY;
 int endX;
 int endY;
 
 void setup() {
 size(300,300);
 startX = 0;
 startY = 150;
 endX = 0;
 endY = 150;
 background(0);
 strokeWeight((float)(Math.random()*5) + 2);
 
 }
 
 void draw() {
 stroke(128, 175, 175);
 
 while(endX < 300 && endY <300) {
 endX = startX + ((int)(Math.random()*10));
 endY = startY + ((int)(Math.random()*20)-9);
 line(startX, startY, endX, endY);
 startX = endX; 
 startY = endY;
 }
 }
 
 void mousePressed() {
 startX = 0;
 startY = 150;
 endX = 0;
 endY = 150;
 }
 */
