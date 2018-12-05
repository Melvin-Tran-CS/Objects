class Ball extends Shape {
  private float radius;
  private float xSpeed;
  private float ySpeed;
  private color c;
  private int ballStartX = width/2;
  private int ballStartY = height/2;

  private Ball(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
    xSpeed = 1;
    ySpeed = 1;
  }
  public void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }
  void step() {
    
      paddleUp = paddleHeight/2 + y ;
      paddleDown = paddleHeight/2 - y;
    
   
    x+= xSpeed;
    y+= ySpeed;
    if (x == paddle.x && y == paddle.y-paddleHeight) {
      xSpeed *= -1;
    }
    if (x == peddle.x && y == peddle.y-paddleHeight) {
      xSpeed *= -1;
    }
    if (y > 1000) {
      ySpeed *= -1;
    }
    if (y < 0) {
      ySpeed *= -1;
    }
  }

  void score() {

    if (x == 0+(radius/2) || x == width-(radius/2)) { //Score for Player 2, note the index
      if (x == 0+(radius/2)) { //Player 2 Score
        score[1] += 1;
      }
      if (x == width-(radius/2)) { //Player 1 Score
        score[0] += 1;
      }
      x = ballStartX;
      y = ballStartY;
      if (x == ballStartX && r < 1) {
        xSpeed *= -1;
      }
    }
  }
}
