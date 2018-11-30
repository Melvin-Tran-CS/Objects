class Ball extends Shape {
private float radius;
  private float xSpeed;
  private float ySpeed;
 private color c;

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
    x+= xSpeed;
    y+= ySpeed;
    if (x > 1500) {
      xSpeed *= -1;
    }
    if (x < 0) {
      xSpeed *= -1;
    }
    if(y > 1000){
    ySpeed *= -1;
    }
    if (y < 0){
    ySpeed *= -1;
    }
  }
}
