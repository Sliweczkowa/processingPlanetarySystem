class CelestialBody {
  int bColor;
  int bDiameter;
  Point bAnchorPointCoordinates;
  int bDistanceFromAnchorPoint;
  int bRotationAngle;
  Point bCoordinates;
  
  CelestialBody(int bColor, int bDiameter, Point bAnchorPointCoordinates, int bDistanceFromAnchorPoint, int bRotationAngle) {
    this.bColor = bColor;
    this.bDiameter = bDiameter;
    this.bAnchorPointCoordinates = bAnchorPointCoordinates;
    this.bDistanceFromAnchorPoint = bDistanceFromAnchorPoint;
    this.bRotationAngle = bRotationAngle;
    bCoordinates = new Point(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y + bDistanceFromAnchorPoint);
  }
  
  void drawCelestialBody(int n) {
    pushMatrix();
    translate(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y);
    rotate(radians((n * bRotationAngle) % 360));
    fill(this.bColor);
    circle(0, this.bDistanceFromAnchorPoint, this.bDiameter);
    //TODO: Refresh anchor point coordinates for moons; 
    this.bCoordinates = new Point(screenX(0, this.bDistanceFromAnchorPoint), screenY(0, this.bDistanceFromAnchorPoint));
    popMatrix();
  }
}

CelestialBody Sun = new CelestialBody(#FFFF00, 201, new Point(x/2, y/2), 0, 0);

CelestialBody Mercury = new CelestialBody(#808080, 7, Sun.bCoordinates, 100 + 20 + 3, 1);
CelestialBody Venus = new CelestialBody(#FFA500, 15, Sun.bCoordinates, 100 + 20 + 7 + 20 + 7, 2);
CelestialBody Earth = new CelestialBody(#0000FF, 17, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 8, 3);
CelestialBody Mars = new CelestialBody(#FF0000, 9, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 4, 4);
CelestialBody Jupiter = new CelestialBody(#00FFFF, 80, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 9 + 20 + 40, 5);

CelestialBody EarthMoon = new CelestialBody(#C0C0C0, 3, Earth.bCoordinates, 8 + 5 + 1, 3);
CelestialBody MarsMoon0 = new CelestialBody(#D3D3D3, 2, Mars.bCoordinates, 4 + 5 + 1, 2);
CelestialBody MarsMoon1 = new CelestialBody(#DCDCDC, 1, Mars.bCoordinates, 4 + 10, 1);
