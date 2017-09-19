float a=600;
float b=600;
float w=50;

void setup() {
  size (600,600);
  background(#F2D7D8);
  noStroke();
  fill(250);
  ellipse (100,500,100,100);
  fill(#D7F1F2);
  rect (a-w,b-w,w,w);
}

void draw(){
  
  
  if (mousePressed==true){  
  rect (mouseX, mouseY+10, 10,10);
  }
  
  if (mousePressed== false && mouseX > a-w && mouseY >b-w){
  fill(#D7E4F2);
  rect (a-w*2,b-w*2,w,w);
  }
  
  if (mousePressed== false && mouseX >a-w*2 && mouseX < a-w && mouseY >b-w*2 && mouseY <b-w){
  fill(#D9D7F2);
  rect (a-w*3,b-w*3,w,w);
  }
  
  if (mousePressed== false && mouseX >a-w*3 && mouseX < a-w*2 && mouseY >b-w*3 && mouseY <b-w*2){
  fill(#E7D7F2);
  rect (a-w*4,b-w*4,w,w);
  }
  
  if (mousePressed== false && mouseX >a-w*4 && mouseX < a-w*3 && mouseY >b-w*4 && mouseY <b-w*3){
  fill(#F2D7EF);
  rect (a-w*5,b-w*5,w,w);
  }
  
  if (mousePressed== false && mouseX >a-w*5 && mouseX < a-w*4 && mouseY >b-w*5 && mouseY <b-w*4){
  fill(#F2D7E2);
  rect (a-w*6,b-w*6,w,w);
  }
  
  if (mousePressed== false && mouseX >a-w*6 && mouseX < a-w*5 && mouseY >b-w*6 && mouseY <b-w*5){
  fill(#F2D7E2);
  rect (a-w*7,b-w*7,w,w);
  }
  
  if (mousePressed== false && mouseX >a-w*7 && mouseX < a-w*6 && mouseY >b-w*7 && mouseY <b-w*6){
  fill(#F0F2D7);
  rect (0,0,width,height);
  }

}