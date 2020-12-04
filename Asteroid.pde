class Asteroid extends Floater {
  private double rotSpeed;

  public Asteroid() {
    corners = 7; 
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*3)-9; 
    yCorners[0] = -8;
    xCorners[1] = 0;
    yCorners[1] = (int)(Math.random()*4)-9;
    xCorners[2] = (int)(Math.random()*3)+6;
    yCorners[2] = -8;
    xCorners[3] = (int)(Math.random()*3)+11;
    yCorners[3] = 0;
    xCorners[4] = (int)(Math.random()*2)+6;
    yCorners[4] = 10;
    xCorners[5] = (int)(Math.random()*3)-9;
    yCorners[5] = 8;
    xCorners[6] = (int)(Math.random()*3)-4;;
    yCorners[6] = 0;
    rotSpeed = (int)(Math.random()*5)-2; 
    myColor = color(143, 121, 91);
    myCenterX = (float)(Math.random()*400); 
    myCenterY = (float)(Math.random()*400); 
    myXspeed = (int)(Math.random()*3)-1; 
    myYspeed = (int)(Math.random()*3)-1; 
    myPointDirection = (int)(Math.random()*3)-1; 
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  //getters for myCenterX and myCenterY 
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
