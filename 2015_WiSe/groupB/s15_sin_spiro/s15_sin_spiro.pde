void setup() {
  size(600, 600);
  background(255);
  rectMode(CENTER);
  stroke(0, 50);
}
void draw() {
  float ang = frameCount * 0.02;
  
  float x1 = 300 + 300 * sin(ang * 1.0);
  float y1 = 300 + 300 * sin(ang * 1.13);
  float x2 = 300 + 300 * sin(ang * 1.21);
  float y2 = 300 + 300 * sin(ang * 1.37);
  
  line(x1, y1, x2, y2);
}
void keyPressed() {
  if(key == 's') {
    save("result.png");
  }
}