float a = 0.005;
float m = cos(3*PI/4) + 0.008;
float b = 0.001;
float cx = 1;
float cy = 1;
float s = 0.05;

void setup() {
  size(1200, 650);
  background(20, 10, 10);
  noStroke();
  frameRate(1);
}

void draw() {
  for (int i = 0; i < 30; i++) {
    float newX = cy + a*(1-b*sq(cy))*cy + m*cx + 2*(1-m)*sq(cx) / (1 + sq(cx));
    float newY = -cx + m*newX + 2*(1-m)*sq(newX) / (1 + sq(newX));
  
    float distance = dist(int(width / 2 + newX/s), int(height / 2 + newY/s), (width/2), height/2);
    int n=int(distance/80) ;
    
    if (n >= 0 && n < 1) fill(255,0,0); //fill(255, 0, 0);
    else if (n >= 1 && n < 2) fill(249,23,126); //fill(255, 255, 0);  
    else if (n >= 2 && n < 3) fill(244,45,226);
    else if (n >= 3 && n < 4) fill(171,67,234);
    else if (n >= 4 && n < 5) fill(95,95,227);
    else if (n >= 5 && n < 6) fill(122,186,221);
    else if (n >= 6 && n < 7) fill(151,214,185);
    else if (n >= 7 && n < 8) fill(169,209,169);
    else if (n >= 8 && n < 9) fill(192,204,180);
    else fill(202,200,193); //fill(255);
    ellipse(int(width / 2 + newX/s), int(height / 2 + newY/s), 2, 2);

    if (n >= 0 && n < 2) stroke(255,0,0,050);
    else if (n >= 2 && n < 3) stroke(244,45,226,50);
    else if (n >= 3 && n < 4) stroke(171,67,234,50);
    else if (n >= 4 && n < 5) stroke(95,95,227,50);
    else if (n >= 5 && n < 6) stroke(122,186,221,50);
    else if (n >= 6 && n < 7) stroke(151,214,185,50);
    else if (n >= 7 && n < 8) stroke(169,209,169,50);
    else if (n >= 8 && n < 9) stroke(192,204,180,50);
    else stroke(202,200,193,5);
    line(int(width / 2 + newX/s), int(height / 2 + newY/s), int(width / 2 + cx/s), int(height / 2 + cy/s));
  
    // save the point to variables
    cx = newX;
    cy = newY;
  }
}
