class Ball {
  float x;
   float y;
   color c;
   float diameter;
  float gravity;
  float xSpeed;
  float ySpeed;
   int ballNumber = 50;
  
  
  public Ball(float width,float height){
  this.x = mouseX;//random(width);
  this.y = mouseY;//random(height);
  this.diameter = random(width*1/25);
  this.c = color(int(random(255)),int(random(255)),int(random(255)));
  gravity = 0.5;
  this.xSpeed = random(-5,5);
  this.ySpeed = random(-5,5);
  
  }
  /*public float getX(){
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
  } */
  void step(){
  x += xSpeed;
  y += ySpeed;
  ySpeed += gravity;
  }
  void draw() {
    
  fill(c);
  ellipse(x,y,diameter,diameter);
  }
}
