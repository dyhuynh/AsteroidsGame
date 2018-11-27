class Missile extends Floater
{
  double dRadians;
  public Missile() {

    myColor = color(11, 82, 163);
    myCenterX = bob.getX();
    myCenterY = bob.getY();
    myPointDirection = bob.getPointDirection();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 15*Math.cos(dRadians)+ bob.getDirectionX();
    myDirectionY = 15*Math.sin(dRadians)+ bob.getDirectionY();

  }
  public void setX(int x) {
    myCenterX = x;
  }  
  public int getX() {
    return (int)myCenterX;
  }   
  public void setY(int y) {
    myCenterY = y;
  }   
  public int getY() {
    return (int)myCenterY;
  }   
  public void setDirectionX(double x) {
    myDirectionX = x;
  }  
  public double getDirectionX() {
    return myDirectionX;
  }   
  public void setDirectionY(double y) {
    myDirectionY = y;
  }   
  public double getDirectionY() {
    return myDirectionY;
  }   
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }   
  public double getPointDirection() {
    return myPointDirection;
  }


  public void show ()  //Draws the floater at the current position  
  {              
  fill(240);
  ellipse(getX(), getY(), 10, 10); 

  }

  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }

}
