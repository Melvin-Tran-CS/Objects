class RightPaddle {
  float rightPaddleX;
  float rightPaddleY;
  final int rightPaddleHeight;
  final int rightPaddleWidth;
  int rightPaddleStartX = 480 ;
  int rightPaddleStartY = 300;
  color rightColor;

  public RightPaddle() {
    rightPaddleX = rightPaddleStartX;
    rightPaddleY = rightPaddleStartY;
    rightPaddleHeight = 40;
    rightPaddleWidth = 10;
    rightColor = #1DE0DB;
  }
  void rightMove() {

    if (keyPressed) {
      if (keyCode == UP) {
        rightPaddleStartY += -5;
      }
      if (keyCode == UP && rightPaddleStartY == 0) {
        rightPaddleStartY += 5;
      }
      if (keyCode == DOWN) {
        rightPaddleStartY += 5;
      }
      if (keyCode == DOWN && rightPaddleStartY == 600) {
        rightPaddleStartY += -5;
      }
    }
  }
}
