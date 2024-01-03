class Saturno {
  Point bAnchorPointCoordinates;
  int bDistanceFromAnchorPoint;
  float bAngularSpeed;
  Point bCoordinates;
  
  Saturno(Point bAnchorPointCoordinates, int bDistanceFromAnchorPoint, float bAngularSpeed) {
    this.bAnchorPointCoordinates = bAnchorPointCoordinates;
    this.bDistanceFromAnchorPoint = bDistanceFromAnchorPoint;
    this.bAngularSpeed = bAngularSpeed;
    bCoordinates = new Point(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y + bDistanceFromAnchorPoint, bAnchorPointCoordinates.z);
  }

  void drawSaturno(int n) {
    pushMatrix();
      translate(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y, bAnchorPointCoordinates.z);
      rotateZ(radians((n * bAngularSpeed) % 360));
      pushMatrix();
        translate(0, this.bDistanceFromAnchorPoint, 0);
        shape(globePlanet);
        this.bCoordinates.x = modelX(0, 0, 0);
        this.bCoordinates.y = modelY(0, 0, 0);
        this.bCoordinates.z = modelZ(0, 0, 0);
      popMatrix();
    popMatrix();
  }
}
