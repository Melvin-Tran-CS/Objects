class Ball {
  float x ;
  float y ;
  float diameter ;
  color colour;
  color coloor;
  float xSpeed;
  float ySpeed;
  float ballStartX;
  float ballStartY;

public Ball(float x, float y, color myColour,color yourColour) {
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = myColour;
    coloor = yourColour;
    xSpeed = 1;
    ySpeed = 1;
    ballStartX = width/2;
    ballStartY = height/2;
  }

  void step() {
    x += xSpeed;
    y += ySpeed;

    if (x+xSpeed < 0 || x+xSpeed > width) {
      xSpeed *= -1;
    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
      ySpeed *= -1;
    }
    
  }
}
