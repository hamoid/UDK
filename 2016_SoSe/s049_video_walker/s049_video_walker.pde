import processing.video.*;

Movie movie;

float x, y;

void setup() {
  size(800, 800);
  movie = new Movie(this, "/home/funpro/Desktop/work/2015_altsoundtrack/alternativesoundtrack/version4_eclipse/movies/t2-na.mp4");
  movie.loop();
  
  x = width/2;
  y = height/2;
}
void draw() {
  if (movie.available() == true) {
    movie.read();
  }
  
  ellipse(x, y, 5, 5);
  
  // we need to map the position because the size of 
  // our sketch and the video are probably different
  int videoX = int(map(x, 0, width, 0, movie.width));
  int videoY = int(map(y, 0, height, 0, movie.height));
  
  // grab a color from the video
  color aPixel = movie.get(videoX, videoY);
  // get the hue of that color
  float hu = hue(aPixel);
  // map the hue into an angle in degrees
  // this angle will define in which direction our
  // point moves
  float angle = map(hu, 0, 255, 0, 360);
  
  // lets move 5 pixels away in direction "angle"
  x = x + 0.3 * cos(radians(angle));
  y = y + 0.3 * sin(radians(angle));
  
  // Try: 
  // - use brightness to define the step size (instead of 0.3)
  // - use saturation for the size of the ellipse
  // - check if x and y are out of the screen. jump back to center if they are.
  // - draw the ellipse with the color from aPixel
  // - put the lines starting with "ellipse().." in a loop, so you draw 100 points per frame instead of just one.
  // - try different videos to produce different results
}