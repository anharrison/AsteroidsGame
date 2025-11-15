class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
      corners = 9;
      xCorners = new int[] {11, 4, -2, -7, -10, -10, -7, -2, 4};
      yCorners = new int[] {0, -2, -6, -6, -10, 10, 6, 6, 2};
      myColor = color(255,10,50);
      myCenterX = 200;
      myCenterY = 200;
      //myXspeed = Math.random()*2;
      //myYspeed = Math.random()*2;
      myXspeed = 0;
      myYspeed = 0;
      //myPointDirection = Math.random()*2*Math.PI;
      myPointDirection = 0;
    }
     public void setXspeed(double x){
       myXspeed = x;
     }
     public void hyperspace(){
       myXspeed = 0;
       myYspeed = 0;
       myCenterX = Math.random()*400;
       myCenterY = Math.random()*400;
       myPointDirection = Math.random()*360;
     }
     public double getX(){
       return myCenterX;
     }
     public double getY(){
       return myCenterY;
     }
}
