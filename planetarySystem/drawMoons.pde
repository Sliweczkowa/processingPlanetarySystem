class Moon {
  int moonColor;
  int moonDiameter;
  int distanceFromPlanet;
  // planet coordinates
  
  Moon(int mColor, int diameter, int distance) {
    this.moonColor = mColor;
    this.moonDiameter = diameter;
    this.distanceFromPlanet = distance;
  }
}

Moon EarthMoon = new Moon(#C0C0C0, 3, 8 + 5 + 1);
Moon MarsMoon0 = new Moon(#D3D3D3, 2, 8 + 5 + 1);
Moon MarsMoon1 = new Moon(#DCDCDC, 1, 8 + 5 + 1);
