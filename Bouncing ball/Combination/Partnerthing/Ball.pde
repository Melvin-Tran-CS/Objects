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

    if (x+xSpeed <0 || x+xSpeed > width) {
      xSpeed *= -1;
    }
    if (y+ySpeed < 0 || y+ySpeed > height) {
      ySpeed *= -1;
    }
    
  }
   void score() {

    if (x == 0+(diameter/2) || x == width-(diameter/2)) { //Score for Player 2, note the index
      if (x == 0+(diameter/2)) { //Player 2 Score
        score[1] += 1;
      }
      if (x == width-(diameter/2)) { //Player 1 Score
        score[0] += 1;
      }
      x = ballStartX;
      y = ballStartY;
      if (x == ballStartX && r < 1){
      xSpeed *= -1;
      }
      
    }
  }
  void score2() {
    

    if (x == 0+(diameter/2) || x == width-(diameter/2)) { //Score for Player 2, note the index
      if (x == 0+(diameter/2)) { //Player 2 Score
        score[1] += 1;
      }
      if (x == width-(diameter/2)) { //Player 1 Score
        score[0] += 1;
      }
      x = ballStartX;
      y = ballStartY+20;
      if (x == ballStartX && r < 1){
      xSpeed *= -1;
      }
      
    }
    println(leftPaddle.paddleX);
  }
}
