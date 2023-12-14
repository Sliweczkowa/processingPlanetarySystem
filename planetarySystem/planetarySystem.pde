int x = 700;
int y = 700;
int n = 0;

PImage textureSun;
PShape globeSun;

PImage textureSaturno;
PShape globePlanet;

Sun sun = new Sun(#FFFF00, 201, new Point(x/2, y/2), 0, 0);

Planet mercury = new Planet(#808080, 7, sun.bCoordinates, 100 + 20 + 3, 4.1);
Planet venus = new Planet(#FFA500, 15, sun.bCoordinates, 100 + 20 + 7 + 20 + 7, 1.6);
Planet earth = new Planet(#0000FF, 17, sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 8, 1);
Planet mars = new Planet(#FF0000, 13, sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 4, 0.5);
Planet jupiter = new Planet(#00FFFF, 80, sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 9 + 40 + 40, 0.1);

Moon moon = new Moon(#C0C0C0, 3, earth.bCoordinates, 8 + 3 + 1, 10.2);
Moon phobos = new Moon(#D3D3D3, 7, mars.bCoordinates, 6 + 3 + 5 + 3 + 3, 2);
Moon deimos = new Moon(#DCDCDC, 5, mars.bCoordinates, 6 + 3 + 2, 2.4);
Moon io = new Moon(#DCDCDC, 3, jupiter.bCoordinates, 40 + 3 + 1, 6.4);
Moon europa = new Moon(#DCDCDC, 3, jupiter.bCoordinates, 40 + 3 + 3 + 3 + 1, 4);
Moon ganymede = new Moon(#DCDCDC, 5, jupiter.bCoordinates, 40 + 3 + 3 + 3 + 3 + 3 + 2, 1.6);
Moon callisto = new Moon(#DCDCDC, 5, jupiter.bCoordinates, 40 + 3 + 3 + 3 + 3 + 3 + 5 + 3 + 2, 0.8);

Saturno saturno = new Saturno(#FFFFFF, 0, sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 9 + 40 + 40 + 80, 0.5);


void settings() {
  size(x, y, P3D);
}

void setup() {
  noStroke();
  
  textureSun = loadImage("textureSun.jpg");
  globeSun = createShape(SPHERE, sun.bDiameter/2);
  globeSun.setTexture(textureSun);
  
  textureSaturno = loadImage("saturno/2k_saturn.jpg");
  globePlanet = loadShape("saturno/saturno.obj");
  globePlanet.scale(0.005);
  globePlanet.setTexture(textureSaturno);
}

void draw() {
  background(0);
  sun.drawSun(n);
  mercury.drawPlanet(n);
  venus.drawPlanet(n);
  earth.drawPlanet(n);
  mars.drawPlanet(n);
  jupiter.drawPlanet(n);
  moon.drawMoon(n);
  phobos.drawMoon(n);
  deimos.drawMoon(n);
  io.drawMoon(n);
  europa.drawMoon(n);
  ganymede.drawMoon(n);
  callisto.drawMoon(n);
  saturno.drawSaturno(n);
  
  n++;
}
