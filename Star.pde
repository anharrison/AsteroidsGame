class Star 
{
  private int myX, myY; 
    public Star(){
      myX = (int)(Math.random()*width); 
      myY = (int)(Math.random()*height); 
    }
  
  public void show(){
    noStroke();  
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    ellipse(myX, myY,3, 3); 
  }
 
}
