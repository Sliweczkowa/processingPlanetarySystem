class Planet {
  int planetColor;
  int planetDiameter;
  int distanceFromSun;
  
  Planet(int pColor, int diameter, int distance) {
    this.planetColor = pColor;
    this.planetDiameter = diameter;
    this.distanceFromSun = distance;
  }
  
  void drawPlanet() {
    fill(this.planetColor);
    circle(x/2, y/2 + this.distanceFromSun, this.planetDiameter);
  }
}

Planet Mercury = new Planet(#808080, 7, 100 + 20 + 3);
Planet Venus = new Planet(#FFA500, 15, 100 + 20 + 7 + 20 + 7);
Planet Earth = new Planet(#0000FF, 17, 100 + 20 + 7 + 20 + 15 + 20 + 8);
Planet Mars = new Planet(#FF0000, 9, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 4);
Planet Jupiter = new Planet(#00FFFF, 80, 100 + 20 + 7 + 20 + 15 + 20 + 17 + 20 + 9 + 20 + 40);
