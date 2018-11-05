Ball[] ball =  new Ball[10];

void setup(){
size(500,600);
for(int i = 0; i < ball.length; i++){
ball[i] = new Ball(width,height);
}

}
void draw(){
for(int i = 0; i < ball.length; i++){
ball[i].step();
}
for(int i = 0; i < ball.length; i++){
ball[i].draw();
}
}
void mouseCLicked(){
for(int i = 0; i < ball.length; i++){
ball[i] = new Ball(width,height);
}
}
