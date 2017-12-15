WindowBlinds windowblinds1;
WindowBlinds windowblinds2;

class WindowBlinds{
  float shade, thick, incr, blindstarts, off, speed, blindends;
  float direction;
    
  WindowBlinds(float blindX, float offset){
    
    incr = 0;
    blindstarts = blindX;
    off = offset;   
    
  }
  
  void display(){
    int winY1 = (height-winheight)/2;
    int winY2 = winheight+(height - winheight)/2;
        
    for (int b=0; b<40; b++){
      stroke(#6FCB95,200);
      strokeWeight(b/6);
      speed = b*incr+incr;
      blindends = (height - winheight)/2 + speed;
      line(blindstarts, blindends, blindstarts+winwidth, blindends);
    
    strokeWeight(4);
    stroke(#e8d7ca);
    fill(#536C69,100);   
    ellipse(blindstarts+winwidth/2, winY1,20,20);//closing button
    ellipse(blindstarts+winwidth/2, winY2,20,20);//opening button
      
    }
  }
  
  void closing(){
    
    boolean blindsup = false;       
    if (incr <=8){
      blindsup = true;
      mv.volume(100);
    }
    
    if (blindsup==false){
      mv.volume(0);
    }
    
    if (blindsup == true && mousePressed ==true && dist(mouseX, mouseY, blindstarts+winwidth/2,(height - winheight)/2)<20){
      incr ++;
    }
    
    if ( mousePressed ==true && dist(mouseX, mouseY, blindstarts+winwidth/2,winheight+(height - winheight)/2)<20 && !(blindends<175)){
      incr -=1;
    }
    
  }
  
  void instruct(){
    textAlign(CENTER);
    textFont(sand);
    fill(#e8d7ca);
    
    boolean blindsup = false;       
    if (incr <=8){
      blindsup = true;
    }
    
    if (blindsup == true && dist(mouseX, mouseY, blindstarts+winwidth/2,(height - winheight)/2)<20){
      text("close blinds",blindstarts+winwidth/2, (height - winheight)/2-20);
    }
    
    if (dist(mouseX, mouseY, blindstarts+winwidth/2,winheight+(height - winheight)/2)<20 && !(blindends<175)){
      text("open blinds", blindstarts+winwidth/2,winheight+(height - winheight)/2+30);
    }
    
  }

}