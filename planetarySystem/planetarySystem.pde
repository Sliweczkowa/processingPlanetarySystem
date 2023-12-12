import java.util.Map;

int x = 700;
int y = 700;
int n = 0;

PImage textureSun, textureEarth, textureVenus, textureMars, textureMercury, textureJupiter, textureMoon;
PShape globeSun, globeEarth, globeVenus, globeMars, globeMercury, globeJupiter, globeMoon;

void settings() {
  size(x, y, P3D);
}

void setup() {
  noStroke();
  
  textureSun = loadImage("textureSun.jpg");
  globeSun = createShape(SPHERE, Sun.bDiameter/2);
  globeSun.setTexture(textureSun);
  
  textureMercury = loadImage("textureMercury.jpg");
  globeMercury = createShape(SPHERE, Mercury.bDiameter/2);
  globeMercury.setTexture(textureMercury);
    
  textureVenus = loadImage("textureVenus.jpg");
  globeVenus = createShape(SPHERE, Venus.bDiameter/2);
  globeVenus.setTexture(textureVenus);
  
  textureEarth = loadImage("textureEarth.jpg");
  globeEarth = createShape(SPHERE, Earth.bDiameter/2);
  globeEarth.setTexture(textureEarth);

  textureMars = loadImage("textureMars.jpg");
  globeMars = createShape(SPHERE, Mars.bDiameter/2);
  globeMars.setTexture(textureMars);
  
  textureJupiter = loadImage("textureJupiter.jpg");
  globeJupiter = createShape(SPHERE, Jupiter.bDiameter/2);
  globeJupiter.setTexture(textureJupiter);
  
  textureMoon = loadImage("textureMoon.jpg");
  globeMoon = createShape(SPHERE, Moon.bDiameter/2);
  globeMoon.setTexture(textureMoon);
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
  //Phobos.drawCelestialBody(n);
  //Deimos.drawCelestialBody(n);
  //Io.drawCelestialBody(n);
  //Europa.drawCelestialBody(n);
  //Ganymede.drawCelestialBody(n);
  //Callisto.drawCelestialBody(n);
  
  n++;
}
