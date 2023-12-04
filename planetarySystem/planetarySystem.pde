int x = 700;
int y = 700;
int n = 0;

void settings() {
  size(x, y);
}

void setup() {
  noStroke();
}

void draw() {
  background(0);
  Sun.drawCelestialBody(n);
  Mercury.drawCelestialBody(n);
  Venus.drawCelestialBody(n);
  Earth.drawCelestialBody(n);
  Mars.drawCelestialBody(n);
  Jupiter.drawCelestialBody(n);
  EarthMoon.drawCelestialBody(n);
  MarsMoon0.drawCelestialBody(n);
  MarsMoon1.drawCelestialBody(n);
  
  if(n == 359)
    n = 0;
  else
    n++;
}
