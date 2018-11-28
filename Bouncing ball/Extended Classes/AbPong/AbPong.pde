PImage yeet;
private ArrayList<Shape> shapes = new ArrayList<Shape>();
Circle circle;

Shape triangle = new Shape(50,75) {
void draw() {
fill (random(255),random(255),random(255));
triangle (x,y,x+10,y+10,x+10,y+10);
}
};

public void setup() {
  size(500, 600);
  yeet = loadImage("Kitchen_gun.png");
  yeet.resize(500, 600);
  Rectangle rHex = new Rectangle(width*1/4,height*1/4,width*2/4,width*2/4,color(#420DAB));
  Rectangle rRGB = new Rectangle(width*3/5,height*3/5,width*1/5,width*1/5,color(random(255),random(255),random(255)));
  Circle circle = new Circle(width/3,height/3,100,color(random(255),random(255),random(255)));
  Circle sircle = new Circle(380,height/3,100,color(random(255),random(255),random(255)));
  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(sircle);
  shapes.add(circle);
  shapes.add(triangle);
}
public void draw() {
  background(yeet); //hes white which means white background
  for(int i = 0; i < shapes.size();i++){
  shapes.get(i).draw();
  shapes.get(i).step();
}
  


}
abstract class Shape {
  public float x;
  public float y;

  private Shape(float x , float y) {
    this.x = x;
    this.y = y;
  }
  
  abstract void draw();
 abstract void step();
}
