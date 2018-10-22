class Ball {
  private int x = 250;
  private int y = 250;
  private int diameter;

  public int targetX = 250;
  public int targetY = 250;

  Ball(int x, int y, int diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
  } //End of Constructor


  void step() {


    if (x < targetX) {
      x++;
    } else {
      x--;
    }
    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  }
  public int getX() { 
    return x;
  }
  public int getY() {
    return y;
  }
  public int getDiameter() {
    return diameter;
  }
}
