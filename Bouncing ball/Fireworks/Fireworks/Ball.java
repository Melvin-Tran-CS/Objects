class Ball(){
  private float x;
  private float y;
  private color c;
  private float diameter;
  float gravity;
  float xSpeed;
  float ySpeed;
  public float ballNumber;
  
  
  public Ball(float x,float y,float diameter){
  this.x = x;
  this.y = y;
  this.diameter = diameter;
  this.c = color(int(random(255)),int(random(255)),int(random(255)));
  this.gravity = gravity;
  this.xSpeed = 5;
  this.ySpeed = 5;
  ballNumber = 10;
  }
  public float getX(){
  return x;
  }
  public float getY(){
  return y;
  }
  public float getDiameter(){
  return diameter;
  }
  public float getC(){
  return c;
  } 
}
