class Sun {
  int bDiameter;
  Point bAnchorPointCoordinates;
  int bDistanceFromAnchorPoint;
  float bRotationAngle;
  Point bCoordinates;
  
  Sun(int bDiameter, Point bAnchorPointCoordinates, int bDistanceFromAnchorPoint, float bRotationAngle) {
    this.bDiameter = bDiameter;
    this.bAnchorPointCoordinates = bAnchorPointCoordinates;
    this.bDistanceFromAnchorPoint = bDistanceFromAnchorPoint;
    this.bRotationAngle = bRotationAngle;
    bCoordinates = new Point(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y + bDistanceFromAnchorPoint);
  }

  void drawSun(int n) {
    pushMatrix();
    translate(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y, 0);
    rotateZ(radians((n * bRotationAngle) % 360));
    pushMatrix();
    translate(0, this.bDistanceFromAnchorPoint, 0);
    lights();
    shape(globeSun);
    this.bCoordinates.x = screenX(0, 0, 0);
    this.bCoordinates.y = screenY(0, 0, 0);
    popMatrix();
    popMatrix();
  }
}
