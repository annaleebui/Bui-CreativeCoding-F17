void timebar(){
    float barwidth= 15;
    float barheight=300;
    
    //height-length bar behind
    strokeWeight(2);
    stroke(#C9E8D5);
    line(barwidth*2,0,barwidth*2,height);
    
    //white bar
    fill(#e8d7ca);
    stroke(#e8d7ca);
    strokeWeight(5);
    rect(barwidth*3/2, height/2-barheight/2, barwidth,barheight);
    
    //moving bar
    float l= height/2-barheight/2+(frameCount+1)/(mv.duration()*frameRate/barheight);
    constrain(l, 1, barheight);
    stroke(#e07b36);
    strokeWeight(barwidth);    
    line(barwidth*2, height/2-barheight/2, barwidth*2, l);
    
}

void playpause(){
  float barwidth= 15;
  
  image(play,barwidth*2-play.width/2+6,80);
  image(pause,barwidth*2-play.width/2+6,110);
  
  if (dist(mouseX, mouseY, barwidth*2-pause.width/2+6,110)<play.width && (mousePressed==true)){
    mv.volume(0);
  }
  
  if (dist(mouseX, mouseY, barwidth*2-play.width/2+6,80)<play.width && (mousePressed==true)){
    mv.volume(100);
  }
  
}

void sceneRec(){  
  image(beds,1100,height-210);
  image(baths,1100,height-155);
  image(livings,1100,height-100);
  image(kitchens,1100,height-45);

  float curSec = frameCount/frameRate;
  
  if (curSec>32 && curSec<69){
    image(bedss,1100,height-210);
  }
  if (curSec>70 && curSec<113){
    image(bathss,1100,height-155);
  }
  if (curSec>113 && curSec<133){
    image(livingss,1100,height-100);
  }
  if (curSec>133 && curSec<180){
    image(kitchenss,1100,height-45);
  }
}