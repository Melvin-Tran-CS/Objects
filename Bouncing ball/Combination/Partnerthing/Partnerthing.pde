Ball myBall = new Ball(50,100,50,color(0,255,0));
Ball yourBall = new Ball(50,75,50,color(0,150,0));
int paddleWidthRatio; 
int paddleHeightRatio = 10;
int [] paddle = {0, 0}; //Paddle width and height
int [] player = new int [4]; //Alternate way of initializing an Array, for paddles
//0: Player1_X, 1:Player1_Y, 2:Player2_X, 3:Player2_Y
int [] score = {0, 0}; //Player score 1 & 2
void setup() {
  size(500, 600);
  ScreenSizeChecker();
  println("Exiting,not exiting");
  //exit();
}
void draw() {
  fill(myBall.colour);
  fill(yourBall.coloor);
  background(0);
  score();
  myBall.step();
  yourBall.step();
  
  ellipse(myBall.x, myBall.y, myBall.diameter, myBall.diameter);
  ellipse(yourBall.x,yourBall.y,yourBall.diameter,yourBall.diameter);
}
