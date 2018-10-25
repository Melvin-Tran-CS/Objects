class Star {
  private float x;
  private float y;
  private float radius;
  
  public static int starCount = 100; //Number of stars or Pong Balls that will be drawn
  public static int maxRadius = 500; //can this be a ratio of width with error checking of different geometery


  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
  } //End of Constructor

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
} //End of Start
