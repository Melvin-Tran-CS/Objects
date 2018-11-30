PImage Ahh;
private ArrayList<Shape> shapes = new ArrayList<Shape>();
Ball ball;
public void setup() {
  size(1500, 1000);
  Ahh = loadImage("zucc.jpg");
  Ahh.resize(1500, 1000);
  rectMode(CENTER);
  Paddle paddle = new Paddle(100, height/2, width*1/200, 200, color(#420DAB));
  Paddle peddle = new Paddle(1400, height/2, width*1/200, 200, color(#420DAB));
  Ball ball = new Ball(width/2, height/2, 100, color(random(255), random(255), random(255)));
  Ball ballz = new Ball(width/2+100, height/2, 100, color(random(255), random(255), random(255)));
  shapes.add(peddle);
  shapes.add(paddle);
  shapes.add(ball);
  shapes.add(ballz);
}
public void draw () {
  background(Ahh);
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
    shapes.get(i).step();
  }
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
