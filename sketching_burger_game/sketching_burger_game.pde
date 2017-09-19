
int x=500;
int y=190;
int Vx=10;
int Vy=2;


int a=160;
int b=200;
int Va=10;
int Vb=2;

void setup(){
  size(600,400);
  background(#ffffff);
  ellipse(150,200,200,40);//pan
  ellipse(300,300,300,50);//plate dummy
  ellipse(500,190,100,20);//patty
  line(0,200,600,200); 
}

void draw() {
  
  if (mousePressed==true && mouseX>450 && mouseX<550 && mouseY>180 && mouseY<200){
  x= x-Vx;
  y= y-Vy;
  ellipse(x,y,100,20);
  }
  
  if (x <160){
    x =160;
  }
  
  if (y<150){
    Vy= Vy*-1;
  }
  
  if (y>200){
    y=200;
  }
  
  if (mousePressed==true && mouseX<260 && mouseY>160 && mouseY<210){
     a= a+Va;
  b= b+Vb;
  ellipse(a,b,100,20);
  }
  
  if (a>300){
  a=300;
  }
  
  if (b>280){
  Vb=280;
  }
}