PImage Ahh;
private ArrayList<Shape> shapes = new ArrayList<Shape>();
Ball ball;
Paddle paddle;
Paddle peddle;
public void setup() {
  size(1500, 1000);
  Ahh = loadImage("zucc.jpg");
  Ahh.resize(1500, 1000);
  rectMode(CENTER); 
  createStuff();
}
public void draw () {
  background(Ahh);
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
    shapes.get(i).step();
    
  }
  PaddleMove();
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
