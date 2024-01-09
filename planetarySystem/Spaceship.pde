void drawSpaceship(float x, float y, float z, String direction) {
  pushMatrix();
    translate(x, y, z);
  
    switch(direction) {
      case "north":
        spaceship.rotate(PI);
        shape(spaceship);
        spaceship.rotate(-PI);
        break;
      case "south":
        shape(spaceship);
        break;
      case "west":
        spaceship.rotate(PI/2);
        shape(spaceship);
        spaceship.rotate(-PI/2);
        break;
      case "east":
        spaceship.rotate(-PI/2);
        shape(spaceship);
        spaceship.rotate(PI/2);
        break;
      case "q":
        spaceship.rotateX(-PI/2);
        shape(spaceship);
        spaceship.rotateX(PI/2);
        break;
      case "e":
        spaceship.rotateX(PI/2);
        shape(spaceship);
        spaceship.rotateX(-PI/2);
        break;
    }
  
  popMatrix();
}
