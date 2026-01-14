//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var leftX = 90;
var rightX = 520;
var Petals = 87;
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
 fill(0,200,0)
 rect(277,313,30,237);
 ellipse(215,514,124,46);
 ellipse(374,438,134,46);

 //Flower
 fill(200,0,0);
ellipse(290,220,Petals,Petals);
ellipse(240,290,Petals,Petals);
ellipse(322,299,Petals,Petals);
fill(200,200,0);
ellipse(290,260,46,46);
point(285,251)
point(295,268)
point(278,266)
point(300,258)
point(288,260)
point(295,252)
point(286,273)
point(306,266)
point(277,258)
point(297,278)
point(304,251)
point(280,249)
point(291,245)
point(279,277)
 
  rightX = rightX -1
  leftX = leftX +1;

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
