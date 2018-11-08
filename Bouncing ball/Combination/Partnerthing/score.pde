 void score () {
  
  
  if (myBall.x == 0+(myBall.diameter/2) || myBall.x == width-(myBall.diameter/2)) { //Score for Player 2, note the index
    if (myBall.x == 0+(myBall.diameter/2)) { //Player 2 Score
      score[1] += 1;
      myBall.x = myBall.ballStartX;
      myBall.y = myBall.ballStartY;
     
    }
    if (myBall.x == width-(myBall.diameter/2)) { //Player 1 Score
      score[0] += 1;
      myBall.x = myBall.ballStartX;
      myBall.y = myBall.ballStartY;
    }
    
  }
   
  if (yourBall.x == 0+(yourBall.diameter/2) || yourBall.x == width-(yourBall.diameter/2)) { //Score for Player 2, note the index
    if (yourBall.x == 0+(yourBall.diameter/2)) { //Player 2 Score
      score[1] += 1;
      yourBall.x = yourBall.ballStartX;
    yourBall.y = yourBall.ballStartY+20;
    }
    if (yourBall.x == width-(yourBall.diameter/2)) { //Player 1 Score
      score[0] += 1;
      yourBall.x = yourBall.ballStartX;
    yourBall.y = yourBall.ballStartY+20;
    }
  
  }
  
  
    
  //player[1] = height/2 - height/paddleHeightRatio/2;
  
  textSize(0.1*width);
  text( score[0], (width*1/5)-(0.1*width), height*1/5); //Printing to ration of screen, Player 1 is minusing width of font
  // Note: review of Character escape and this seems to "busy" on the screen
  text(score[1], width*4/5, height*1/5);
  println ("Score Board is: " + score[0] + " Player-1" + "     " + score[1] + " Player-2");
  //println("ballStartX:" + myBall.ballStartX,"  ballX:" +myBall.x);
  }
