class Asteroid extends Floater
{ private int rotSpeed;
  private int aSize;
	Asteroid() {
		aSize = 1;
		corners = 8;
		xCorners = new int [corners];
		yCorners = new int [corners];

		xCorners[0] = -10*aSize;
		yCorners[0] = -9*aSize;
		xCorners[1] = -14*aSize;
		yCorners[1] = -3*aSize;
		xCorners[2] = -11*aSize;
		yCorners[2] = 2*aSize;
		xCorners[3] = -10*aSize;
		yCorners[3] = 8*aSize;
		xCorners[4] = 6*aSize;
		yCorners[4] = 11*aSize;
		xCorners[5] = 9*aSize;
		yCorners[5] = 10*aSize;
		xCorners[6] = 13*aSize;
		yCorners[6] = 0*aSize;
		xCorners[7] = 8*aSize;
		yCorners[7] = -5*aSize;

		myColor = color(50,50,50);
		myCenterX = (int)(Math.random()*600+100);
		myCenterY = (int)(Math.random()*600+100);
		myDirectionX = (Math.random()*10-4);;
		myDirectionY = (Math.random()*10-4);;
		myPointDirection = (int)(Math.random()*360+100);;
		rotSpeed = (int)(Math.random()*29-15);


	}

	public void setX(int x) {myCenterX = x;}  
  		public int getX() {return (int)myCenterX;}   
  		public void setY(int y) {myCenterY = y;}   
   		public int getY() {return (int)myCenterY;}   
   		public void setDirectionX(double x) {myDirectionX = x;}  
   		public double getDirectionX() {return myDirectionX;}   
   		public void setDirectionY(double y) {myDirectionY = y;}   
   		public double getDirectionY() {return myDirectionY;}   
   		public void setPointDirection(int degrees) {myPointDirection = degrees;}   
   		public double getPointDirection() {return myPointDirection;} 
   		public int getrotSpeed() {return rotSpeed;}   

 public void move ()   //move the floater in the current direction of travel
  {      
    
    //change the x and y coordinates by myDirectionX and myDirectionY       
   turn(rotSpeed);
   super.move();
  }   





}