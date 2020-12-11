class Bullet extends Floater {

  public Bullet(Spaceship bob) {//add argument
    myCenterX = bob.getSX();
    myCenterY = bob. getSY();
    myColor = color(250,50,50);
    myPointDirection = bob.getPD();
    myXspeed = bob.getSPX();
    myYspeed = bob.getSPY();
  }
  public void show() {
    fill(myColor);   
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10,10);
  }
  public void move() {
    super.accelerate(0.6);
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }
  public double getCX(){
    return myCenterX; 
  }
  public double getCY(){
    return myCenterY;
  }
}
