void setup(){
  //things that remain constant
  size(600,600);
  
}


void draw(){
  //things that loop constantly
  //inclass excersise
  if(mouseX<width/2){
  background(#ffffff);
    noStroke();
  fill(#23A0D8);
  rect(0,0,width/2,height*0.66);
  }
  if(mouseX>width/2){
    background(#ffffff);
    noStroke();
    fill(#FF4D29);
    rect(width/2,0,width/2,height);
  }
  if(mouseX>=width*0.75){
    background(#FFD603);
  }
  if(mousePressed==true && mouseX<=width/2 && mouseY>=height*0.66){
    background(#ffffff);
    fill(#85B4B3);
    rect(0,height*0.66,width/2,height*0.66);
  }
}


/*
void mousePressed(){
  //things that happen when mouse is pressed
  ellipse(mouseX,mouseY,200,200);
}

void mouseReleased(){
 rect(100,100,100,100); 
}

void mouseDragged(){
  fill(#000000);
  noStroke();
  ellipse(mouseX,mouseY,100,100);
}

void mouseMoved(){
  noFill();
  stroke(#9f3a1b);
  ellipse(mouseX,mouseY,100,100);
}
*/
  