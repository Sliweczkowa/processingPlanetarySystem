int x = 700;
int y = 700;

void settings() {
  size(x, y);
}

void setup() {
  background(0);
  noStroke();
}

void draw() {
  drawSun();
  Mercury.drawPlanet();
  Venus.drawPlanet();
  Earth.drawPlanet();
  Mars.drawPlanet();;
  Jupiter.drawPlanet();
}
