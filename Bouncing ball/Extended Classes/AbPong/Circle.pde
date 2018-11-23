class Circle extends Shape {
  float height;
  float width;
  float radius;
  float xSpeed;
  float ySpeed;
  color c;

  Circle(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
    xSpeed = 1;
    ySpeed = 1;
  }
  void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }
  void step() {
    x+= xSpeed;
    y+= ySpeed;
    if (x > 500) {
      xSpeed *= -1;
    }
    if (x < 0) {
      xSpeed *= -1;
    }
    if(y > 500){
    ySpeed *= -1;
    }
    if (y < 0){
    ySpeed *= -1;
    }
  }
}
