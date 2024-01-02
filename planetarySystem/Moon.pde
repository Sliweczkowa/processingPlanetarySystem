class Moon {
  int bColor;
  int bDiameter;
  Point bAnchorPointCoordinates;
  int bDistanceFromAnchorPoint;
  float bRotationAngle;
  Point bCoordinates;

  Moon(int bColor, int bDiameter, Point bAnchorPointCoordinates, int bDistanceFromAnchorPoint, float bRotationAngle) {
    this.bColor = bColor;
    this.bDiameter = bDiameter;
    this.bAnchorPointCoordinates = bAnchorPointCoordinates;
    this.bDistanceFromAnchorPoint = bDistanceFromAnchorPoint;
    this.bRotationAngle = bRotationAngle;
    bCoordinates = new Point(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y + bDistanceFromAnchorPoint, bAnchorPointCoordinates.z);
  }

  void drawMoon(int n) {
    pushMatrix();
    translate(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y, bAnchorPointCoordinates.z);
    rotateZ(radians((n * bRotationAngle) % 360));
    pushMatrix();
    translate(0, this.bDistanceFromAnchorPoint, 0);
    specular(this.bColor);
    box(this.bDiameter);
    this.bCoordinates.x = modelX(0, 0, 0);
    this.bCoordinates.y = modelY(0, 0, 0);
    this.bCoordinates.z = modelZ(0, 0, 0);
    popMatrix();
    popMatrix();
  }
}
