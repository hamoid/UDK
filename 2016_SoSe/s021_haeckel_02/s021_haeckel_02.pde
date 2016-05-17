// Based on Kunstformen der Natur
// https://en.wikipedia.org/wiki/Kunstformen_der_Natur#/media/File:Haeckel_Ascidiae.jpg

float angleInDegrees = 0;
float centerX;
float centerY;

void setup() {
  size(800, 800);
  background(0);

  centerX = width / 2;
  centerY = height / 2;

  // draw base circle
  strokeWeight(2);
  stroke(#C5993D);
  fill(#EECD6E);
  ellipse(centerX, centerY, 600, 600);
}

void draw() {
  if (angleInDegrees < 360) {
    float angleInRadians = radians(angleInDegrees);

    // find a point that is 200 pixels away from the center,
    // in the direction specifiend by angleInDegrees
    float x = centerX + 230 * cos(angleInRadians);
    float y = centerY + 230 * sin(angleInRadians);

    // find a point that is 100 pixels away from the center,
    // in the direction specifiend by angleInDegrees
    float xx = centerX + 100 * cos(angleInRadians);
    float yy = centerY + 100 * sin(angleInRadians);

    stroke(#9B5D00);
    noFill();
    // draw a curve connecting the two points
    bezier(x, y, 
      x+random(-25, 25), y+random(-25, 25), 
      xx+random(-25, 25), yy+random(-25, 25), 
      xx, yy);

    fill(#842A01);
    // draw an ellipse on each point
    ellipse(x, y, random(90, 110), random(90, 110));
    ellipse(xx, yy, random(25, 35), random(25, 35));

    // By rotating 30 degrees we get 12 items 
    // (like the hours on an analog clock)
    angleInDegrees = angleInDegrees + 30;
  }
}