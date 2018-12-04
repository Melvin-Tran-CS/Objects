void PaddleMove() {
  if (key == 'w' && paddle.y > 100) {
    paddle.stepUp();
  }
  if (key == 's' && paddle.y < 900) {
    paddle.stepDown();
  }
  if (key == '8' && peddle.y > 100) {
    peddle.stepUp();
  }

  if (key == '5' && peddle.y < 900) {
    peddle.stepDown();
  }
}
