//static window
int winwidth = 310; //HALF
int winheight = 370;
float flash1;

void sceneCanvas(){
  fill (#8DA29F);
  noStroke();
  rect(0, 0, width, height);
  
  
  textAlign(CENTER);
  textFont(sand);
  fill(#e8d7ca);
  
  //arrows
  image(left, width/6-left.width/2,height-left.height*4);
  image(right, width*5/6-right.width/2,height-right.height*4);
  
  if (dist(mouseX, mouseY, width/6-left.width/2,height-left.height*4)<left.width){      
      image(leftt, width/6-left.width/2,height-left.height*4);
      text("scene - 1", width/6, height-left.height*9/2); 
    }
  
  if (dist(mouseX, mouseY, width*5/6-right.width/2,height-right.height*4)<right.width){      
      image(rightt, width*5/6-right.width/2,height-right.height*4);
      text("scene + 1", width*5/6, height-left.height*9/2);
    }
}
void staticWindow(){
  //windows
  fill(#475A4F);
  stroke(#e07b36);
  strokeWeight(13);
  rect(width/2 - winwidth, (height - winheight)/2, winwidth*2, winheight); 
  
}

void Window(){
  //windows
  noFill();
  stroke(#e07b36);
  strokeWeight(13);
  rect(width/2 - winwidth, (height - winheight)/2, winwidth*2, winheight); 
  
}

void faceMask(){
  fill(#FFBC00);
  noStroke();
  ellipse(width/2, height/2, 80,80);
}

void purpleLight(int n){    
  noStroke();
  for (int lx = width/2-winwidth; lx< width-winwidth+20; lx+=2){
      for (int ly = (height - winheight)/2 ; ly<height-(height - winheight)/2; ly+=3){                 
        set(lx,ly,lx*n);
      }
    }  
}

void greyLight(float opacity){
  //scene window light: grey
    noStroke();
    fill (50+flash1,opacity); //need to change to amplitude once apply sound
    rect(width/2 - winwidth, (height - winheight)/2, winwidth*2, winheight);
}