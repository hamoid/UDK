size(600, 600);
noStroke();
for (int x=0; x<width; x=x+25) {
  for (int y=0; y<height; y=y+25) {
    // noise with two arguments
    float n = noise(x * 0.005, y * 0.005);
    fill(n * 255);
    //fill(random(255));
    ellipse(x, y, 40, 40);
  }
}