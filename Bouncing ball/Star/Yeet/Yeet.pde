 private Boolean start = false;
 private Star[] stars =  new Star[Star.starCount];

 public void setup() {
  size(500, 600);
  ScreenSizeChecker();
  ellipseMode(CENTER);
  for (int i=0;i<stars.length;i++){
  createStars(i);
  }
} //End of setup()

 public void draw() {
  startStop();

  if (start==true) {
    
    background(0);

  for(int i = 0; i < stars.length;i++){
    ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
  }
  } //End of startStop
} //End draw()
public void mouseClicked() {
  for(int i = 0 ; i <stars.length; i++){
  createStars(i);
  }
}
