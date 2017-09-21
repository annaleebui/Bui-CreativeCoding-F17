float a=600;
float b=600;
float w=50;

void setup() {
  size (600,600);
  background(#E0B7C8);
  noStroke();
  fill(250);
  ellipse (50,550,100,100);
  fill (#AF798A);
  rect (125,200,75,400);
  fill(#D7F1F2);
  rect (a-w,b-w,w,w);
  
}

void draw(){
  
  
  if (mousePressed==true && !(mouseX>125 && mouseX<200 && mouseY>200)){  
  rect (mouseX, mouseY, 10,10);
  }
  
}

void mouseReleased() {
  
  if (mousePressed== false && mouseX > a-w && mouseY >b-w){
  fill(#D5E2F0);
  rect (a-w*2,b-w*2,w,b-w*2);
  }
  
  if (mousePressed== false && mouseX >a-w*2 && mouseX < a-w && mouseY >b-w*2 && mouseY <b-w){
  fill(#D5D5F0);
  rect (a-w*3,b-w*3,w,b-w*3);
  }
  
  if (mousePressed== false && mouseX >a-w*3 && mouseX < a-w*2 && mouseY >b-w*3 && mouseY <b-w*2){
  fill(#E3D5F0);
  rect (a-w*4,b-w*4,w,b-w*4);
  }
  
  if (mousePressed== false && mouseX >a-w*4 && mouseX < a-w*3 && mouseY >b-w*4 && mouseY <b-w*3){
  fill(#F0D5EF);
  rect (a-w*5,b-w*5,w,b);
  }
  
  if (mousePressed== false && mouseX >a-w*5 && mouseX < a-w*4 && mouseY >b-w*5 && mouseY <b-w*4){
  fill(#F0D5E2);
  rect (a-w*6,b-w*6,w,b);
  }
  
  if (mousePressed== false && mouseX >a-w*6 && mouseX < a-w*5 && mouseY >b-w*6 && mouseY <b-w*5){
  fill(#F2D7E2);
  rect (a-w*7,b-w*7,w,b);
  }
  
  if (mousePressed== false && mouseX >a-w*7 && mouseX < a-w*6 && mouseY >b-w*7 && mouseY <b-w*6){
  fill(#F0D5D5);
  rect (a-w*8,b-w*8,w,b);
  }
  
  if (mousePressed== false && mouseX >a-w*8 && mouseX < a-w*7 && mouseY >b-w*8 && mouseY <b-w*7){
  fill(#F0D5D5);
  rect (0,0,a,b);
  }
  
}