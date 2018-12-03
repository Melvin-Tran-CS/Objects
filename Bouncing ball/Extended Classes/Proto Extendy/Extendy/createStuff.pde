void createStuff (){
Paddle paddle = new Paddle(100, height/2, width*1/200, 200, color(#420DAB));
Paddle peddle = new Paddle(1400, height/2, width*1/200, 200, color(#420DAB));
  Ball ball = new Ball(width/2, height/2, 100, color(random(255), random(255), random(255)));
  Ball ballz = new Ball(width/2+100, height/2, 100, color(random(255), random(255), random(255)));
  shapes.add(peddle);
  shapes.add(paddle);
  shapes.add(ball);
  shapes.add(ballz);
}
