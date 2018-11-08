class Ball {
  float x ;
  float y ;
  int diameter ;
  color colour;
  color coloor;
  float xSpeed;
  float ySpeed;
  int ballStartX = 250;
  int ballStartY = 300;

public Ball(float x, float y) {
    this.x = x;
    this.y = y;
    diameter = 20;
    colour = #BEE5F7;
    coloor = #DFE327;
    xSpeed = 1;
    ySpeed = 1;
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
  
