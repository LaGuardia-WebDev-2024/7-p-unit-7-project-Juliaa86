//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var leftX = 90;
var rightX = 520;

//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
  // clouds 
  fill(255, 255, 255);

  // left cloud
  ellipse(leftX, 50, 126, 97);
  ellipse(leftX+62, 50, 70, 60);
  ellipse(leftX-62, 50, 70, 60);

  // right cloud
  ellipse(rightX, 52, 126, 97);
  ellipse(rightX+62, 52, 70, 60);
  ellipse(rightX-62, 52, 70, 60);
 
 // Stem
 
 
  rightX = rightX -1
  leftX = leftX +1

  if(leftX > 600){leftX = -100}
  if(rightX < -50){rightX = 600}


  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
