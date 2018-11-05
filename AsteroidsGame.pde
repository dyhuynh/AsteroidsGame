Spaceship bob;
Star[] galaxy;
ArrayList<Asteroid> rocks;
ArrayList<Missile> lasers;
Missile joe;

private int speedLimit;
public void setup() 
{
  speedLimit = 5;
  size(800, 800);
  bob = new Spaceship();
  rocks = new ArrayList<Asteroid>();
  lasers = new ArrayList<Missile>();
  galaxy = new Star[80];

  for (int i = 0; i<galaxy.length; i++) {
    galaxy[i] = new Star();
  }
  for (int i = 0; i<10; i++) {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{

  background(0);
  for (int i = 0; i<rocks.size(); i++) {
    rocks.get(i).show();
    rocks.get(i).move();
  }
  for (int i = 0; i<lasers.size(); i++) {
    lasers.get(i).show();
    lasers.get(i).move();
  }
  bob.show();
  bob.move();
 
  

  for (int i = 0; i<galaxy.length; i++) {
    galaxy[i].show();
  }
  if (bob.getDirectionX()>speedLimit) {
    bob.setDirectionX(speedLimit);
  }
  if (bob.getDirectionY()>speedLimit) {
    bob.setDirectionY(speedLimit);
  }
  if (bob.getDirectionX()<-speedLimit) {
    bob.setDirectionX(-speedLimit);
  }
  if (bob.getDirectionY()<-speedLimit) {
    bob.setDirectionY(-speedLimit);
  }

}

public void keyPressed() {

  if (key == 'a') {
    bob.turn(-20);
  } else if (key == 'd') {
    bob.turn(20);
  }
  if (key == 'w') {
    bob.accelerate(2);
  } else if (key == 's') {
    bob.accelerate(-3);
  }
  if (key == 'h') {
    bob.hyperspace();
  }
  if (key == 'e') {
    bob.brake();
  }
   if (key == 'q') {
   	System.out.println("hello");
    lasers.add(new Missile());
   

  }
}
