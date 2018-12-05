Boolean leftside = false;
int paddleHeight = 200;
float paddleUp;
float paddleDown;

PImage Ahh;
private ArrayList<Shape> shapes = new ArrayList<Shape>();
Ball ball;
Paddle paddle;
Paddle peddle;
int [] score = {0, 0};
float r;
public void setup() {
  size(1500, 1000);
  Ahh = loadImage("zucc.jpg");
  Ahh.resize(1500, 1000);
   
  createStuff();
}
public void draw () {
  background(Ahh);

  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
    shapes.get(i).step();
  }
  PaddleMove();
  ball.score();
  fill(#F0F50A);
  textSize(0.1*width);
  text( score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  // Note: review of Character escape and this seems to "busy" on the screen
  text(score[1], width*4/5, height*1/5);
  
  //println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
}

abstract class Shape {
  public float x;
  public float y;

  private Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }
  abstract void draw();
  abstract void step();
}
