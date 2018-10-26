class Star //note that this class does NOT extend Floater
{
private int sX;
private int sY;
Star() {
   sX = (int)(Math.random()*800);
   sY = (int)(Math.random()*800);

}

void show() {

	fill(255);
	ellipse(sX,sY,10,10);
}

}
