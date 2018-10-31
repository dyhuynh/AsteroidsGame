class Spaceship extends Floater  
{   
	Spaceship() {
		corners = 24;
		xCorners = new int [corners];
		yCorners = new int [corners];

		xCorners[0] = 17;
		yCorners[0] = 0;
		xCorners[1] = 1;
		yCorners[1] = 3;
		xCorners[2] = 1;
		yCorners[2] = 6;
		xCorners[3] = 3;
		yCorners[3] = 7;
		xCorners[4] = -4;
		yCorners[4] = 20;
		xCorners[5] = -4;
		yCorners[5] = 12;
		xCorners[6] = -2;
		yCorners[6] = 11;
		xCorners[7] = 0;
		yCorners[7] = 8;
		xCorners[8] = -2;
		yCorners[8] = 9;
		xCorners[9] = -11;
		yCorners[9] = 7;
		xCorners[10] = -2;
		yCorners[10] = 5;
		xCorners[11] = -2;
		yCorners[11] = 2;

		xCorners[12] = -8;
		yCorners[12] = 0;

		xCorners[13] = -2;
		yCorners[13] = -2;
		xCorners[14] = -2;
		yCorners[14] = -5;
		xCorners[15] = -11;
		yCorners[15] = -7;
		xCorners[16] = -2;
		yCorners[16] = -9;
		xCorners[17] = 0;
		yCorners[17] = -8;
		xCorners[18] = -2;
		yCorners[18] = -11;
		xCorners[19] = -4;
		yCorners[19] = -12;
		xCorners[20] = -4;
		yCorners[20] = -20;
		xCorners[21] = 3;
		yCorners[21] = -7;
		xCorners[22] = 1;
		yCorners[22] = -6;
		xCorners[23] = 1;
		yCorners[23] = -3;

		

		myColor = color(11, 82, 163);
		myCenterX = 400;
		myCenterY = 400;
		myDirectionX = 3;
		myDirectionY = 3;
		myPointDirection = 1;
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

   		public void hyperspace() {
   			bob.setX((int)(Math.random()*800));
   			bob.setY((int)(Math.random()*800));
   			myPointDirection = (int)(Math.random()*360);
   			myDirectionX = myDirectionY = 0;

   		}

   		

   		 public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    if (key == 'w') {
    stroke(239, 70, 19);
    line(-10,-7,-18,-7);
    line(-10,0,-18,0);
    line(-10,7,-18,7);
}
     if (key == 's') {
    stroke(239, 70, 19);
    line(3,-8,10,-8);
	line(3,8,10,8);   
}

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   

	
}
