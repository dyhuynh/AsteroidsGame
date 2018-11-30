Spaceship bob;
Star[] galaxy;
ArrayList<Asteroid> rocks;
ArrayList<Missile> lasers;
Missile joe;
int health;
int score;
boolean a,d,w,s,e,q;
boolean game;
double deceleration;


private int speedLimit;
public void setup() 
{
  deceleration = .2;
  a=d=w=s=e=q=false;
  health = 50;
  score = 0;
  game=false;
  speedLimit = 3;
  size(800, 800);
  bob = new Spaceship();
  rocks = new ArrayList<Asteroid>();
  lasers = new ArrayList<Missile>();
  galaxy = new Star[80];

  for (int i = 0; i<galaxy.length; i++) {
    galaxy[i] = new Star();
  }
  for (int i = 0; i<9; i++) {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{       
  if(game==true) {return;} 
  background(0);
  text("Health:"+health,700,50);
  text("Score:"+score,700,100);

  if (rocks.size()<9) {
      rocks.add(new Asteroid());
     }

 


    for (int i = 0; i<rocks.size(); i++) {
      rocks.get(i).show();
      rocks.get(i).move();
    }
    for (int i = 0; i<lasers.size(); i++) {
      lasers.get(i).show();
      lasers.get(i).move();
    }
    for(int nI = 0; nI<rocks.size(); nI++)
      {
      for (int i = 0; i<lasers.size(); i++) 
        {
      
      if (dist(lasers.get(i).getX(),lasers.get(i).getY(),rocks.get(nI).getX(),rocks.get(nI).getY())<12) 
      {
        rocks.remove(nI);
        lasers.remove(i);
        score+=10;
        break;
      }
      }
    }
  for(int nI = 0; nI<rocks.size(); nI++)
      {
      if (dist(rocks.get(nI).getX(),rocks.get(nI).getY(),bob.getX(),bob.getY())<15) 
      {
        rocks.remove(nI);
        health-=10;
        
      }
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

       if (bob.getDirectionX()>0) {
      bob.setDirectionX(bob.getDirectionX()-deceleration);
    }
    if (bob.getDirectionY()>0) {
      bob.setDirectionY(bob.getDirectionX()-deceleration);
    }
    if (bob.getDirectionX()<0) {
      bob.setDirectionX(bob.getDirectionX()+deceleration);
    }
    if (bob.getDirectionY()<0) {
      bob.setDirectionY(bob.getDirectionY()+deceleration);
    }
    //keyPressed
     if (a==true) {
      bob.turn(-3);
    } else if (d==true) {
      bob.turn(3);
    }
    if (w==true) {
      bob.accelerate(2);
    } else if (s==true) {
      bob.accelerate(-3);
    }
    
    if (e==true) {
      bob.brake();
    }
     if (q==true) {

      lasers.add(new Missile(bob));
     
     

    }

    if (health==0) {
      background(0);
      text("GAME OVER",300,400);
      text("Health:"+health,700,50);
      text("Score:"+score,700,100);
      game=true;
  }
}

public void keyPressed() {


  if(key == 'p') {
    health=100;
    setup();    
    game=false;
  }
  if (key == 'a') {
    a=true;
  } 
   if (key == 'd') {
    d=true;
  }
  if (key == 'w') {
    w=true;
  } 
   if (key == 's') {    
    s=true;
   }


  if (key == 'h') {
    bob.hyperspace();
  }
  if (key == 'e') {
    e=true;
  }

   if (key == 'q') {
    q=true;
  }
}
public void keyReleased() {


  if (key == 'a') {
    a=false;
  } 
   if (key == 'd') {
    d=false;
  }
  if (key == 'w') {
    w=false;
  } 
   if (key == 's') {    
    s=false;
   }



  if (key == 'e') {
    e=false;
  }

   if (key == 'q') {
    q=false;
  }
}
