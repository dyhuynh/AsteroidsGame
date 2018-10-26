Spaceship bob;
Star[] galaxy;
private int speedLimit = 10;
public void setup() 
{
	size(800,800);
bob = new Spaceship();
galaxy = new Star[30];
for (int i = 0; i<galaxy.length; i++){
	galaxy[i] = new Star();

}
}
public void draw() 
{
background(0);
bob.show();
bob.move();
for (int i = 0; i<galaxy.length; i++){
	galaxy[i].show();
	
}
if (bob.getDirectionX()>speedLimit){bob.setDirectionX(speedLimit);}
if (bob.getDirectionY()>speedLimit){bob.setDirectionY(speedLimit);}
if (bob.getDirectionX()<-speedLimit){bob.setDirectionX(-speedLimit);}
if (bob.getDirectionY()<-speedLimit){bob.setDirectionY(-speedLimit);}

}

public void keyPressed() {

if (key == 'a'){bob.turn(-20);}

else if (key == 'd'){bob.turn(20);}
else if (key == 'w'){bob.accelerate(1);System.out.println("a");
}
else if (key == 's'){bob.accelerate(-1);}
else if(key == 'h'){bob.hyperspace();}



}
