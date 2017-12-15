ObjectHalo lamphalo;
ObjectHalo phonehalo;
ObjectHalo cactushalo;
ObjectHalo whiskyhalo;
ObjectHalo egonhalo;
ObjectHalo soaphalo;
ObjectHalo fruithalo;
ObjectHalo magnethalo;

class ObjectHalo{
  String content;
  PImage iImage;
  float oX, R, oY, cX, cY, num, expand, indivR;
  color halocolor;
  
  ObjectHalo(float radius, float cenX, float cenY, color hcolor, String comment, PImage intImage){
    R = radius;
    num = 20;
    cX= cenX;
    cY= cenY;
    expand = 0;
    halocolor= hcolor;
    content= comment;
    iImage = intImage;
  }
  
  void display(){
    pushMatrix();
    translate(cX, cY);
    for (int t=0; t<num; t++){
      fill(halocolor);
      noStroke();     
      oX = cos(PI*t/(num/2))*R;
      oY = sin(PI*t/(num/2))*R;
      indivR= num/num + expand;
      ellipse(oX,oY,indivR,indivR);
    }
    popMatrix();
  }
  
  void animate(){
    expand = expand + 1/num;
    if (indivR >=num/3){
      expand = 0;
    }
  }
  
  void instruct(){
    fill(#E8365D);  
    if (dist(mouseX, mouseY, cX,cY)<R & !(mousePressed==true)){      
      text("press + drag",cX, (cY+R)+(R*1/3));
    }   
  }
  
  void interpret(){
    float iX= width-30-R*2;
    
    
    if (mousePressed==true && dist(mouseX, mouseY, cX,cY)<R){         
     
      color c = get(mouseX, mouseY);
      fill(c,100);
      rect(iX, height/2-R*2,R*2, R*2);
      image(iImage, width-30-R-(iImage.width/2), height/2- R-(iImage.height/2));          
      textAlign(RIGHT);
      textSize(15);
      fill(c);
      text(content,width-30, height/2 +20);
      
      
      
    }   
  }
    
 
}