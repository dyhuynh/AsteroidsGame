class Star //note that this class does NOT extend Floater
{
private int sX;
private int sY;
private int randomShift;
private float ratio;
Star() {
   ratio = (float)(Math.random());
   sX = (int)(Math.random()*800);
   sY = (int)(Math.random()*800);

}

void show() {

	fill(255);

	beginShape();
    {
      stroke(0,0,0);
      vertex(0*ratio+sX,-5*ratio+sY);            
      vertex(2*ratio+sX,-1*ratio+sY);
      vertex(7*ratio+sX,-1*ratio+sY);
      vertex(3*ratio+sX,2*ratio+sY);
      vertex(5*ratio+sX,6*ratio+sY);
      vertex(0*ratio+sX,3*ratio+sY);
      vertex(-5*ratio+sX,6*ratio+sY);
      vertex(-3*ratio+sX,2*ratio+sY);
      vertex(-7*ratio+sX,-1*ratio+sY);
      vertex(-2*ratio+sX,-1*ratio+sY);
 


    }
    endShape(CLOSE);

}

}
