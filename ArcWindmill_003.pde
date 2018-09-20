// Fork of Arc Windmill Thing (remixed)
// by Gordon Zheng  
// https://www.openprocessing.org/sketch/426169
// Rupert Russell
// 20 September 2018
// code on github at: https://github.com/rupertrussell/Arc-Windmill-002

void setup() {
  size(8800, 8800);
}

float arcLength = PI ;
int numArcs = 7500;
void draw() { 

  background(255);
  noFill();
  stroke(0);
  translate(width/2, height/2);

  for (int r = 20; r < numArcs; r += 10) {
    rotate(millis()/1000.0);
    drawArc(r);
  }

  save("A_"+ frameCount + ".png");
  println(frameCount + ".png");
}

void drawArc(float radius) {
//  strokeWeight(radius/30);
 strokeWeight(10);
  arc(0, 0, radius, radius, 0, arcLength);
}
