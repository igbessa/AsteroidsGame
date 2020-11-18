//your variable declarations here
Spaceship bob = new Spaceship();
Star[] astro = new Star[200]; 
public void setup() 
{
  for(int i = 0; i < astro.length; i++){
    astro[i] = new Star();
  }
  size(400,400);
  bob.turn(90);
}
public void draw() 
{
  background(0);
  for(int i = 0; i < astro.length; i++){
    astro[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if(key == 'h'){
    bob.hyperspace();
    bob.turn(Math.random()*360);
  }
  if(key == 'w'){
    bob.accelerate(0.2);
  }
  if(key == 'd'){
    bob.turn(5);
  }
    if(key == 'a'){
    bob.turn(-5);
  }
  
}
