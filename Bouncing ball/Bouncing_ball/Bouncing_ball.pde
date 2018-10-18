Ball ball = new Ball(250,250);
void setup(){
size(500,500);
ellipseMode(CENTER);
}

void draw(){
  
  ball.step();
  
background(0);
ellipse(ball.x,ball.y, 4500, 450);
}

void mouseClicked(){
ball.targetX = mouseX;
ball.targetY = mouseY;

}
