class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;   
    yCorners[0] = -8;  
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(235, 149, 52); //white ship   
    myCenterX = 200;
    myCenterY = 200; //holds center coordinates   
    myXspeed = 0;
    myYspeed = 0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  public void hyperspace() {
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*330)+50;
    myCenterY = (int)(Math.random()*330)+50;
  }
  public float getSX() {
    return (float)myCenterX;
  }
  public float getSY() {
    return (float)myCenterY;
  }
}
