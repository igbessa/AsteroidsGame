int health = 10;
int astNum = 20;
Spaceship bob = new Spaceship();
Star[] astro = new Star[200]; 
ArrayList <Asteroid> astList = new ArrayList <Asteroid>();
ArrayList <Bullet> pewpew = new ArrayList <Bullet>();

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
  textSize(30);
  fill(255, 255, 255);
  text("health:"+health, 20, 30);
  
  //shows and moves bullets
  for(int ni = 0; ni < pewpew.size(); ni++){
      pewpew.get(ni).move();
      pewpew.get(ni).show();
  }
  //asteroid functions
  for(int ni = astList.size()-1; ni >= 0; ni--){
    astList.get(ni).move();
    astList.get(ni).show();
    //collision btwn ship and asteroids
    float dis = dist(bob.getSX(), bob.getSY(), astList.get(ni).getX(),astList.get(ni).getY() );
    if(dis < 20){
      astList.remove(ni);
      astNum--;
      health--;
    }
  }
  //collision btwn bullests and asteroids 
  for(int pi = pewpew.size()-1; pi >= 0; pi--){
    for(int ki = astList.size()-1; ki >= 0; ki--){
      float diB= dist((float)pewpew.get(pi).getCX(), (float)pewpew.get(pi).getCY(),astList.get(ki).getX(),astList.get(ki).getY() );
       if(diB < 20){ 
          astNum--;
          astList.remove(ki);
          break;
        }
        if(diB < 10){
          pewpew.remove(pi);
          break;
        }//end if 
     }//end ast for
  }//end pew for
  if(astNum <= 0){
    textSize(50);
    fill(255, 255, 255);
    text("YOU WIN!", 100, 200);
  }
  if(health <= 0){
    textSize(50);
    fill(255, 255, 255);
    text("YOU LOSE!", 100, 200);
  }
  
  
}//end draw

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
  if (key == ' '){ //shoot the bullet
    pewpew.add(new Bullet(bob));
  }
  
}
