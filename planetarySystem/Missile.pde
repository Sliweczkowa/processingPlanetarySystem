ArrayList<Missile> missiles = new ArrayList<>();

class Missile {
  Point coordinates;
  int distanceFromSpaceship = 0;
  String direction;

  Missile(Point coordinates, String direction) {
    this.coordinates = coordinates;
    this.direction = direction;
  }

  void drawMissile() {
    pushMatrix();
      switch(direction) {
        case "north":
          translate(coordinates.x, coordinates.y - distanceFromSpaceship, coordinates.z);
          break;
        case "south":
          translate(coordinates.x, coordinates.y + distanceFromSpaceship, coordinates.z);
          break;
        case "east":
          translate(coordinates.x + distanceFromSpaceship, coordinates.y, coordinates.z);
          break;
        case "west":
          translate(coordinates.x - distanceFromSpaceship, coordinates.y, coordinates.z);
          break;
        case "q":
          translate(coordinates.x, coordinates.y, coordinates.z - distanceFromSpaceship);
          break;
        case "e":
          translate(coordinates.x, coordinates.y, coordinates.z + distanceFromSpaceship);
          break; 
      }
      sphere(5);
    popMatrix();
    
    distanceFromSpaceship++;
  }
}

void mouseClicked() {
  missiles.add(new Missile(new Point(spaceshipX, spaceshipY, spaceshipZ), spaceshipDirection));
  missiles.get(missiles.size()-1).drawMissile();
}
