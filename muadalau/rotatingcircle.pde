PImage hand;
ObjectCircle handcircle;

class ObjectCircle{
  float oX, cRadius, oY, cX, cY;
  PImage object;
  
  ObjectCircle(PImage obj, float circleRadius, float centX, float centY){
    oX = 0 - circleRadius;
    cRadius= circleRadius;
    oY = 0;
    object =obj;
    cX= centX;
    cY= centY;
    
  }
  
  void display(){
    pushMatrix();
    translate(cX, cY);
    
    pushMatrix();
    rotate(PI*1/3);
    image(object, oX, oY);
    popMatrix();
    
    pushMatrix();
    rotate(PI*2/3);
    image(object, oX, oY);
    popMatrix();
    
    pushMatrix();
    rotate(PI*3/3);
    image(object, oX, oY);
    popMatrix();
    
    pushMatrix();
    rotate(PI*4/3);
    image(object, oX, oY);
    popMatrix();
    
    pushMatrix();
    rotate(PI*5/3);
    image(object, oX, oY);
    popMatrix();
    
    pushMatrix();
    rotate(PI*6/3);
    image(object, oX, oY);
    popMatrix();
    
    popMatrix();
  }
  
  void animate(){
    oX = oX - 0.1;
    oY = oY- 0.1;
  }
  
  void getout(){    
      oY = oY - 1.5;    
      oX= oX - 1.5;
   
    
    
  }
  

}