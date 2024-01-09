void keyIsPressed(char key) {
  switch(key) {
      case 'w':
        spaceshipY -= 1;
        spaceshipDirection = "north";
        break;
      case 's':
        spaceshipY += 1;
        spaceshipDirection = "south";
        break;
      case 'a':
        spaceshipX -= 1;
        spaceshipDirection = "west";
        break;
      case 'd':
        spaceshipX += 1;
        spaceshipDirection = "east";
        break;
      case 'q':
        spaceshipZ -= 1;
        spaceshipDirection = "q";
        break;
      case 'e':
        spaceshipZ += 1;
        spaceshipDirection = "e";
        break;
  }
}
