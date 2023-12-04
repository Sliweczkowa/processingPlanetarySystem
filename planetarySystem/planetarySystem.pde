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
  Moon.drawCelestialBody(n);
  Phobos.drawCelestialBody(n);
  Deimos.drawCelestialBody(n);
  Io.drawCelestialBody(n);
  Europa.drawCelestialBody(n);
  Ganymede.drawCelestialBody(n);
  Callisto.drawCelestialBody(n);
  
  n++;
}
