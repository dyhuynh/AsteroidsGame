Spaceship bob;
Star[] galaxy;
Asteroid[] rocks;
private int speedLimit = 5;
public void setup() 
{
	size(800,800);
bob = new Spaceship();
rocks = new Asteroid[10];
galaxy = new Star[80];
for (int i = 0; i<galaxy.length; i++){
	galaxy[i] = new Star();

}
for (int i = 0; i<rocks.length; i++){
	rocks[i] = new Asteroid();

}
}
public void draw() 
{
background(0);
for (int i = 0; i<rocks.length; i++){
	rocks[i].show();
	rocks[i].move();
	rocks[i].turn(rocks[i].getrotSpeed());
	
}
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
if (key == 'w'){bob.accelerate(2);}
else if (key == 's'){bob.accelerate(-3);}
if(key == 'h'){bob.hyperspace();}



}
