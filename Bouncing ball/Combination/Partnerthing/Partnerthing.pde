Boolean start = false;
Boolean paddleReset = false;
Ball myBall = new Ball(250, 300);
Ball yourBall = new Ball(250, 320);
LeftPaddle leftPaddle = new LeftPaddle();
RightPaddle rightPaddle = new RightPaddle();
int paddleWidthRatio; 
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y
int [] score = {0, 0}; //Player score 1 & 2
void setup() {
  size(500, 600);
  ScreenSizeChecker();

  //exit();
}
void draw() {
  startStop();
  if (start == true) {
    background(0);

    leftPaddle.leftMove();
    fill(leftPaddle.leftColor);
    rectMode(CENTER);
    rect(leftPaddle.paddleStartX, leftPaddle.paddleStartY, leftPaddle.paddleWidth, leftPaddle.paddleHeight);

    rightPaddle.rightMove();
    fill(rightPaddle.rightColor);
    rectMode(CENTER);
    rect(rightPaddle.rightPaddleStartX, rightPaddle.rightPaddleStartY, rightPaddle.rightPaddleWidth, rightPaddle.rightPaddleHeight);

    myBall.step();

    yourBall.step();

    fill(myBall.colour);
    ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);

    fill(yourBall.coloor);
    ellipse(yourBall.x, yourBall.y, yourBall.diameter, yourBall.diameter);
  }
}
