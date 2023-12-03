class Planet {
  int planetColor;
  int planetDiameter;
  int distanceFromSun;
  int rotationAngle;
  
  Planet(int pColor, int diameter, int distance, int angle) {
    this.planetColor = pColor;
    this.planetDiameter = diameter;
    this.distanceFromSun = distance;
    this.rotationAngle = angle;
  }
  
  void drawPlanet(int n) {
    pushMatrix();
    translate(x/2, y/2);
    rotate(radians((n * rotationAngle) % 360));
    fill(this.planetColor);
    circle(0, this.distanceFromSun, this.planetDiameter);
    popMatrix();
  }
}

Planet Mercury = new Planet(#808080, 7, 100 + 20 + 3, 1);
Planet Venus = new Planet(#FFA500, 15, 100 + 20 + 7 + 20 + 7, 2);
Planet Earth = new Planet(#0000FF, 17, 100 + 20 + 7 + 20 + 15 + 20 + 8, 3);
Planet Mars = new Planet(#FF0000, 9, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 4, 4);
Planet Jupiter = new Planet(#00FFFF, 80, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 9 + 20 + 40, 5);
