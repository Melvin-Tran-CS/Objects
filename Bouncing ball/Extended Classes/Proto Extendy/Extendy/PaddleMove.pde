void PaddleMove() {
  if (key == 'w' && paddle.y > 0) {
    paddle.stepUp();
  }
  if (key == 's' && paddle.y < 800) {
    paddle.stepDown();
  }
  if (key == '8' && peddle.y > 0) {
    peddle.stepUp();
  }

  if (key == '5' && peddle.y < 800) {
    peddle.stepDown();
  }
}
