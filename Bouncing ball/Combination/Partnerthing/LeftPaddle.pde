class LeftPaddle {
  float paddleX;
  float paddleY;
  final int paddleHeight;
  final int paddleWidth;
  int paddleStartX = 20 ;
  int paddleStartY = 300;
  color leftColor;

  public LeftPaddle() {
    paddleX = paddleStartX;
    paddleY = paddleStartY;
    paddleHeight = 40;
    paddleWidth = 10;
    leftColor = #15EA2C;
  }
  void leftMove() {

    if (keyPressed) {
      if (key == 'w') {
        paddleStartY += -5;
      }
      if (key == 'w' && paddleStartY == 0) {
        paddleStartY += 5;
      }
      if (key == 's') {
        paddleStartY += 5;
      }
      if (key == 's' && paddleStartY == 600) {
        paddleStartY += -5;
      }
    }
  }
}
