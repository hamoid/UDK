size(800, 800);
background(20, 80, 100);
rectMode(CENTER);
// task: use noise() to alter
// properties of the rectangles,
// like size, rotation, position
// or color
for(int y=0; y<height; y=y+20) {
  pushMatrix();
  float x = width/2;
  float sz = 30;
  translate(x, y);
  rotate(0);
  rect(0, 0, sz, sz);
  popMatrix();
}