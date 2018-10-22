Ball ball = new Ball(250, 250, 25);
Boolean start = false;
void setup() {
  size(500, 501);
  ellipseMode(CENTER);
  ScreenSizeChecker();
}
void draw() {
  startStop();
  if (start ==  true) {
    ball.step();
    background(0);
    ellipse(ball.getX(), ball.getY(), ball.getDiameter(), ball.getDiameter());
  }
}
void mouseClicked() {
  ball.targetX = mouseX;
  ball.targetY = mouseY;
  //ball.X = mouseX;
  //ball.Y = mouseY;
}
