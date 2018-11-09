class LeftPaddle {
float paddleX;
float paddleY;
final int paddleHeight;
final int paddleWidth;
 int paddleStartX = 30 ;
 int paddleStartY = 300;
 color leftColor;

public LeftPaddle(){
  paddleX = paddleStartX;
  paddleY = paddleStartY;
 paddleHeight = 40;
 paddleWidth = 10;
 leftColor = #15EA2C;
}
void leftMove(){
 
if (keyPressed){
if (keyCode == UP){
paddleStartY += -5;
}
if (keyCode == UP && paddleStartY == 0){
paddleStartY += 5;
}
if (keyCode == DOWN){
paddleStartY += 5;
}
if (keyCode == DOWN && paddleStartY == 600){
  paddleStartY += -5;

}

}


}




}
