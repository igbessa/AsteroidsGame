
int astNum = 10;
Spaceship bob = new Spaceship();
Star[] astro = new Star[200]; 
ArrayList <Asteroid> astList = new ArrayList <Asteroid>();

public void setup() 
{
  //creates new stars
  for(int i = 0; i < astro.length; i++){
    astro[i] = new Star();
  }
  //creates new asteroids
  for(int ni = 0; ni < astNum; ni++){
    astList.add(ni, new Asteroid());
    
  }
  size(400,400);
  bob.turn(90);
}

public void draw() 
{
  background(0);
  //array for stars
  for(int i = 0; i < astro.length; i++){
    astro[i].show();
  }
  //spaceship functions
  bob.move();
  bob.show();
  //asteroid functions
  for(int ni = 0; ni < astNum; ni++){
    astList.get(ni).move();
    astList.get(ni).show();
    //float di = dist(astList.get(ni).getX(),astList.get(ni).getY(),bob.getSX(), bob.getSY() );
    //if(di < 20){
    //  astList.remove(ni);
    //}
  }
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
    bob.turn(10);
  }
    if(key == 'a'){
    bob.turn(-10);
  }
  
}
