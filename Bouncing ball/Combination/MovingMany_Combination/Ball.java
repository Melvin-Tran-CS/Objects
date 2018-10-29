class  Ball {
  private int x = 250;
  private int y = 250;
  private int diameter;
  //private float x2;
  //private float y2;

  public int targetX = 250;
  public int targetY = 250;
  private static int starCount = 100; //Number of stars or Pong Balls that will be drawn
  private static int maxRadius = 500; //can this be a ratio of width with error checking of different geometery

  Ball(int x, int y, int diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    //this.x2 = x2;
    //this.y2 = y2;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
  } //End of Constructor


  void step() {


    if (this.x < targetX) {
      x++;
    } else {
      x--;
    }
    if (this.y < targetY) {
      y++;
    } else {
      y--;
    }
  }
  public  int getX() { 
    return x;
  }
  public  int getY() {
    return y;
  }
  public int getDiameter() {
    return diameter;
  }
  public static int getstarCount() {
    return starCount;
  }
  public static int getMaxRadius() {
    return maxRadius;
  }
}
