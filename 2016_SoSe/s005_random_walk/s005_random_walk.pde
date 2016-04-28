float x, y, stepSize;

void setup() {
  size(600, 600);
  background(#B7F00F);
  noStroke();
  fill(#481C07, 80);
  x = width/2;
  y = height/2;
  stepSize = 20;
}

void draw() {
  float sz = random(20);
  ellipse(x, y, sz, sz);
  stepSize = mouseX * 0.05;
  x = x + random(-stepSize, stepSize);
  y = y + random(-stepSize, stepSize);
  
  if(x > width) {
    x = width/2;
    y = height/2;
  }
  if(x < 0) {
    x = width/2;
    y = height/2;
  }
  if(y > height) {
    x = width/2;
    y = height/2;
  }
  if(y < 0) {
    x = width/2;
    y = height/2;
  }
}