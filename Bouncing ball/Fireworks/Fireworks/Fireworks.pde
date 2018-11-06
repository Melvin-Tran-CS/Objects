Ball[] ball =  new Ball[50];

void setup() {
  size(500, 600);
  for (int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(width, height);
  }
}
void draw() {
background(255);
  for (int i = 0; i < ball.length; i++) {
    ball[i].step();
    ball[i].draw();
  }
}
void mousePressed() {
  for (int i = 0; i < ball.length; i++) {
    ball[i] = new Ball(width, height);
  }
}
