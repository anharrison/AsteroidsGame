class Bullet extends Floater {    
  public Bullet(Spaceship theShip) { 
    corners = 3; 
    xCorners = new int[3];   
    yCorners = new int[3];   
    xCorners[0] = 12;
    yCorners[0] = -4;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = 12;
    yCorners[2] = 4;    
    myColor = color(255);     
    myCenterX = theShip.getX();
    myCenterY = theShip.getY(); 
    myPointDirection = theShip.getPointDirection();     
    myXspeed = theShip.getXspeed();
    myYspeed = theShip.getYspeed();  
    accelerate(6); 
  }  
  public void move() { 
    myCenterX += myXspeed;    
    myCenterY += myYspeed;   
  } 
  public double getX() {
    return myCenterX;
  } 
  public double getY() {
    return myCenterY;
  }
}
