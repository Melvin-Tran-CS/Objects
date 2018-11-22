Boolean start = false;
Boolean paddleReset = false;
float r;
PImage retard;
Ball myBall = new Ball(250, 300);
Ball yourBall = new Ball(250, 320);
LeftPaddle leftPaddle = new LeftPaddle(20,20);
RightPaddle rightPaddle = new RightPaddle();
/*int paddleWidthRatio; 
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y*/
int [] score = {0, 0}; //Player score 1 & 2
void setup() {
  size(500, 600);
  retard = loadImage("zucc.jpg");
  retard.resize(500,600);
  ScreenSizeChecker();

  //exit();
}
void draw() {
  startStop();
  if (start == true) {
    
    background(retard);

    leftPaddle.leftMove();
    fill(leftPaddle.leftColor);
    rectMode(CENTER);
    rect(leftPaddle.paddleStartX, leftPaddle.paddleStartY, leftPaddle.paddleWidth, leftPaddle.paddleHeight);

    rightPaddle.rightMove();
    fill(rightPaddle.rightColor);
    rectMode(CENTER);
    rect(rightPaddle.rightPaddleStartX, rightPaddle.rightPaddleStartY, rightPaddle.rightPaddleWidth, rightPaddle.rightPaddleHeight);
    /*for (int i = 2;i >= 2;){
      float r = random(-1,1);
    }*/
    myBall.score();
    myBall.step();
    
    yourBall.score2();
    yourBall.step();
    
    fill(myBall.colour);
    ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);

    fill(yourBall.coloor);
    ellipse(yourBall.x, yourBall.y, yourBall.diameter, yourBall.diameter);
    
    textSize(0.1*width);
  text( score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  // Note: review of Character escape and this seems to "busy" on the screen
  text(score[1], width*4/5, height*1/5);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
    
  }
  
}
