void setup() {
  size(600, 600);
  background(0);
}
void draw() {
  //background(0);
  
  float cx = width/2;
  float cy = height/2;
  
  float rad0 = 200;
  float a0 = frameCount * 0.07;  
  float x0 = cx + rad0 * cos(a0);
  float y0 = cy + rad0 * sin(a0);
  
  float rad1 = 150;
  float a1 = frameCount * 0.073;  
  float x1 = cx + rad1 * cos(a1);
  float y1 = cy + rad1 * sin(a1);
  
  stroke(255, 150);
  line(x0, y0, x1, y1);
  
  noStroke();
  fill(255, 0, 0);
  ellipse(x0, y0, 5, 5);
  ellipse(x1, y1, 5, 5); 
}
void mousePressed() {
  background(0);
}