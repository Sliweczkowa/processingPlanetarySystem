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
  drawSun();
  pushMatrix();
  Mercury.drawPlanet(n);
  Venus.drawPlanet(n);
  Earth.drawPlanet(n);
  Mars.drawPlanet(n);
  Jupiter.drawPlanet(n);
  
  if(n == 359)
    n = 0;
  else
    n++;
  
  popMatrix();
}
