ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  size(600, 600);
  fill(0);
}
void draw() {
  background(255);
  PVector curr = new PVector();
  for (int x=0; x<width; x+=10) {
    for (int y=0; y<width; y+=10) {
      curr.set(x, y);
      float totalDist = 0;
      for(PVector p : points) {
        float d = curr.dist(p);
        totalDist += 1/d;
      }
      ellipse(x, y, 250*totalDist, 250*totalDist);
    }
  }
}
void mousePressed() {
  points.add(new PVector(mouseX, mouseY));
  println(points.size());
}