class CelestialBody {
  int bColor;
  int bDiameter;
  Point bAnchorPointCoordinates;
  int bDistanceFromAnchorPoint;
  int bRotationAngle;
  Point bCoordinates = new Point(x/2, y/2);
  
  CelestialBody(int bColor, int bDiameter, Point bAnchorPointCoordinates, int bDistanceFromAnchorPoint, int bRotationAngle) {
    this.bColor = bColor;
    this.bDiameter = bDiameter;
    this.bAnchorPointCoordinates = bAnchorPointCoordinates;
    this.bDistanceFromAnchorPoint = bDistanceFromAnchorPoint;
    this.bRotationAngle = bRotationAngle;
  }
  
  void drawCelestialBody(int n) {
    pushMatrix();
    translate(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y);
    rotate(radians((n * bRotationAngle) % 360));
    fill(this.bColor);
    circle(0, this.bDistanceFromAnchorPoint, this.bDiameter);
    popMatrix();
    //TODO: Retrieve body position after popMatrix();
  }
}

CelestialBody Sun = new CelestialBody(#FFFF00, 201, new Point(x/2, y/2), 0, 0);

CelestialBody Mercury = new CelestialBody(#808080, 7, Sun.bCoordinates, 100 + 20 + 3, 1);
CelestialBody Venus = new CelestialBody(#FFA500, 15, Sun.bCoordinates, 100 + 20 + 7 + 20 + 7, 2);
CelestialBody Earth = new CelestialBody(#0000FF, 17, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 8, 3);
CelestialBody Mars = new CelestialBody(#FF0000, 9, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 4, 4);
CelestialBody Jupiter = new CelestialBody(#00FFFF, 80, Sun.bCoordinates, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 9 + 20 + 40, 5);

//CelestialBody EarthMoon = new CelestialBody(#C0C0C0, 3, 8 + 5 + 1, 1);
//CelestialBody MarsMoon0 = new CelestialBody(#D3D3D3, 2, 8 + 5 + 1, 1);
//CelestialBody MarsMoon1 = new CelestialBody(#DCDCDC, 1, 8 + 5 + 1, 1);
