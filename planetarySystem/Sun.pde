class Sun {
  int bDiameter;
  Point bAnchorPointCoordinates;
  int bDistanceFromAnchorPoint;
  float bAngularSpeed;
  Point bCoordinates;
  
  Sun(int bDiameter, Point bAnchorPointCoordinates, int bDistanceFromAnchorPoint, float bAngularSpeed) {
    this.bDiameter = bDiameter;
    this.bAnchorPointCoordinates = bAnchorPointCoordinates;
    this.bDistanceFromAnchorPoint = bDistanceFromAnchorPoint;
    this.bAngularSpeed = bAngularSpeed;
    bCoordinates = new Point(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y + bDistanceFromAnchorPoint, bAnchorPointCoordinates.z);
  }

  void drawSun(int n) {
    pushMatrix();
      translate(bAnchorPointCoordinates.x, bAnchorPointCoordinates.y, bAnchorPointCoordinates.z);
      rotateZ(radians((n * bAngularSpeed) % 360));
      pushMatrix();
        translate(0, this.bDistanceFromAnchorPoint, 0);
        lightSpecular(250, 255, 234);
        pointLight(250, 255, 234, 0, 0, 0);
        emissive(247, 176, 52);
        sphere(this.bDiameter/2);
        emissive(0, 0, 0);
        this.bCoordinates.x = modelX(0, 0, 0);
        this.bCoordinates.y = modelY(0, 0, 0);
        this.bCoordinates.z = modelZ(0, 0, 0);
      popMatrix();
    popMatrix();
  }
}
