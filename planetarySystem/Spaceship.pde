void drawSpaceship(float x, float y, float z) {
  pushMatrix();
    translate(x, y, z);
    shape(spaceship);
  popMatrix();
}
