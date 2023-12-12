class CelestialBody {
  int bColor;
  int bDiameter;
  Point bAnchorPointCoordinates;
  int bDistanceFromAnchorPoint;
  float bRotationAngle;
  Point bCoordinates;
  
  CelestialBody(int bColor, int bDiameter, Point bAnchorPointCoordinates, int bDistanceFromAnchorPoint, float bRotationAngle) {
    this.bColor = bColor;
    this.bDiameter = bDiameter;
    this.bAnchorPointCoordinates = bAnchorPointCoordinates;
    this.bDistanceFromAnchorPoint = bDistanceFromAnchorPoint;
    this.bRotationAngle = bRotationAngle;
    bCoordinates = new Point(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y + bDistanceFromAnchorPoint);
  }
  
  void drawCelestialBody(int n) {
    pushMatrix();
    translate(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y, 0);
    rotateZ(radians((n * bRotationAngle) % 360));
    pushMatrix();
    translate(0, this.bDistanceFromAnchorPoint, 0);
    fill(this.bColor);
    lights();
    sphere(this.bDiameter/2);
    popMatrix();
    this.bCoordinates.x = screenX(0, this.bDistanceFromAnchorPoint);
    this.bCoordinates.y = screenY(0, this.bDistanceFromAnchorPoint);
    popMatrix();
  }
}

CelestialBody Sun = new CelestialBody(#FFFF00, 201, new Point(x/2, y/2), 0, 0);

CelestialBody Mercury = new CelestialBody(#808080, 7, Sun.bCoordinates, 100 + 20 + 3, 4.1);
CelestialBody Venus = new CelestialBody(#FFA500, 15, Sun.bCoordinates, 100 + 20 + 7 + 20 + 7, 1.6);
CelestialBody Earth = new CelestialBody(#0000FF, 17, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 8, 1);
CelestialBody Mars = new CelestialBody(#FF0000, 13, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 4, 0.5);
CelestialBody Jupiter = new CelestialBody(#00FFFF, 80, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 9 + 40 + 40, 0.1);

CelestialBody Moon = new CelestialBody(#C0C0C0, 3, Earth.bCoordinates, 8 + 3 + 1, 10.2);
CelestialBody Phobos = new CelestialBody(#D3D3D3, 7, Mars.bCoordinates, 6 + 3 + 5 + 3 + 3, 2);
CelestialBody Deimos = new CelestialBody(#DCDCDC, 5, Mars.bCoordinates, 6 + 3 + 2, 2.4);
CelestialBody Io = new CelestialBody(#DCDCDC, 3, Jupiter.bCoordinates, 40 + 3 + 1, 6.4);
CelestialBody Europa = new CelestialBody(#DCDCDC, 3, Jupiter.bCoordinates, 40 + 3 + 3 + 3 + 1, 4);
CelestialBody Ganymede = new CelestialBody(#DCDCDC, 5, Jupiter.bCoordinates, 40 + 3 + 3 + 3 + 3 + 3 + 2, 1.6);
CelestialBody Callisto = new CelestialBody(#DCDCDC, 5, Jupiter.bCoordinates, 40 + 3 + 3 + 3 + 3 + 3 + 5 + 3 + 2, 0.8);
