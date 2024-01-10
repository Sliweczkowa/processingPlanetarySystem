ArrayList<Missile> missiles = new ArrayList<>();

class Missile {
  Point coordinates;

  Missile(Point coordinates) {
    this.coordinates = coordinates;
  }

  void drawMissile() {
    pushMatrix();
    translate(coordinates.x, coordinates.y, coordinates.z);
    sphere(5);
    popMatrix();
  }
}

void mouseClicked() {
  missiles.add(new Missile(new Point(spaceshipX, spaceshipY, spaceshipZ)));
  missiles.get(missiles.size()-1).drawMissile();
}
