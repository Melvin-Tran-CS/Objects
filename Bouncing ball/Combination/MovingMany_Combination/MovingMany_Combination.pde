
private Boolean start = false;
private Ball[] stars =  new Ball[Ball.getstarCount()];
public void setup() {
  size(500, 501);
  ellipseMode(CENTER);
  ScreenSizeChecker();
  for (int i=0;i<stars.length;i++){
  createStars(i);
  }
}
public void draw() {
  startStop();
  if (start ==  true) {
    for (int i=0; i<stars.length; i++) {
    createStars(i);
    }
    background(0);

    ellipse(Ball.getX(), Ball.getY(), Ball.getDiameter(), Ball.getDiameter());
  }
}
public void mouseClicked() {
  ball.targetX = mouseX;
  ball.targetY = mouseY;
  for (int i=0; i<stars.length; i++) {
    createStars(i);
  }
  //ball.X = mouseX;
  //ball.Y = mouseY;
}
