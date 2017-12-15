import processing.sound.*;
import processing.video.*;

//state machine to switch scene
int scene;

//sound
SoundFile song;
Amplitude amp;

//video
Movie mv;

//font
PFont sand;
PFont aqua;


void setup(){
  //image loading
  bed = loadImage("bed.png");
  bath = loadImage("bath.png");
  kitchen = loadImage("kitchen.png"); 
  living = loadImage("living.png");
  beds = loadImage("beds.png");
  baths = loadImage("baths.png");
  kitchens = loadImage("kitchens.png");  
  livings = loadImage("livings.png");
  bedss = loadImage("bedss.png");
  bathss = loadImage("bathss.png");
  kitchenss = loadImage("kitchenss.png");  
  livingss = loadImage("livingss.png");
  cactus = loadImage("cactus.png");
  egon = loadImage("egon.png");
  fruit = loadImage("fruit.png");
  lamp = loadImage("lamp.png");
  magnet = loadImage("magnet.png");
  phone = loadImage("phone.png");
  soap = loadImage("soap.png");
  whisky = loadImage("whisky.png");
  hand = loadImage("hand.png");
  right = loadImage("right.png");
  left = loadImage("left.png");
  rightt = loadImage("rightt.png");
  leftt = loadImage("leftt.png");
  kai = loadImage("kai.png");
  graceless = loadImage("graceless.png");
  city = loadImage("city.png");
  pillow = loadImage("pillow.png");
  cloud = loadImage("cloud.png");
  moon = loadImage("moon.png");
  firefly = loadImage("firefly.png");
  ruck = loadImage("ruck.png");
  heels = loadImage("heels.png");
  play = loadImage("play.png");
  pause = loadImage("pause.png");
  
  
  //sound loading
  song = new SoundFile(this, "mua-da-lau.mp3");
  //song.play();
  //println("musicstarts");
  //amp = new Amplitude(this);
  //amp.input(song);
  
  //video loading
  mv = new Movie(this, "mua.mp4");
  mv.play();
  
  size(1200,600);
  background(0);
  strokeCap(SQUARE);
  frameRate(30);
  
  scene=0;
  
  //class objects
  windowblinds1 = new WindowBlinds(width/2-winwidth,0);
  windowblinds2 = new WindowBlinds(width/2,4.5);
  handcircle = new ObjectCircle(hand, 50, 440,333);
  
  lamphalo = new ObjectHalo(60,435,335,#fbe752, "tonight,\ni'll send the light of the firefly\n to somewhere near your window", firefly);
  phonehalo = new ObjectHalo(40,569,390,#dd4900, "i over think your\np-punctuation use", cloud);
  cactushalo = new ObjectHalo(60,807,330,#68764b, "you make a felony out\n of all the good in me", ruck);
  whiskyhalo = new ObjectHalo(30,612,337,#fcb40f, "this whiskey got me feeling pretty", heels);
  soaphalo = new ObjectHalo(40,719,185,#60d5b0, "it's just another\ngraceless night", graceless);
  egonhalo = new ObjectHalo(70,527,169,#ea721a, "the nights were mainly made\nfor saying things that\nyou can't say tomorrow day", moon);
  fruithalo = new ObjectHalo(60,520,441,#bada0a, "take this song out\nand eat it like a morning apple", pillow);
  magnethalo = new ObjectHalo(30,777,304,#FF46D1, "the city's too cold\nthe city's too hot\nlife doesn't give a fuck\nabout what you want", city);
  
  //font
  sand = createFont("sand.otf",15);
  aqua = createFont("aqua.ttf",15);
}

void draw(){
    sceneCanvas();
    //println(amp.analyze());
  if (scene == 0){
    
    sceneCanvas();
    staticWindow();
    purpleLight(5);
    purpleLight(2);
    
    windowblinds1.display();
    windowblinds1.closing();
    windowblinds1.instruct();
    
    windowblinds2.display();
    windowblinds2.closing();
    windowblinds2.instruct();
    
    textFont(aqua);
    textAlign(CENTER);
    textSize(50);
    text("'MUA DA LAU'",width/2,height/2);
    textFont(sand);
    textSize(20);
    text("(It's been raining for a while)",width/2,height/2+45);
    words();
    subs();
    
    
     
  }
  
  if (scene == 1){
    sceneCanvas();
    Window();
    image(mv, width/2-mv.width/2, height/2-mv.height/2);
    bedroom(); 
        
    lamphalo.display();
    lamphalo.animate();
    lamphalo.instruct();
    lamphalo.interpret();
    
    phonehalo.display();
    phonehalo.animate();
    phonehalo.instruct();
    phonehalo.interpret();
    
    cactushalo.display();
    cactushalo.animate();
    cactushalo.instruct();
    cactushalo.interpret();
    
    windowblinds1.display();
    windowblinds1.closing();    
    
    windowblinds2.display();
    windowblinds2.closing();
    words();
    subs();
  }
  
  if (scene == 2){
    sceneCanvas();
    Window();
    image(mv, width/2-(mv.width/2), height/2-(mv.height/2));
    bathroom();
    
    soaphalo.display();
    soaphalo.animate();
    soaphalo.instruct();
    soaphalo.interpret();
    
    egonhalo.display();
    egonhalo.animate();
    egonhalo.instruct();
    egonhalo.interpret();
    
    windowblinds1.display();
    windowblinds1.closing();    
    
    windowblinds2.display();
    windowblinds2.closing();
    
    words();
    subs();
    
  }
  
  if (scene == 3){
    sceneCanvas();
    Window();
    image(mv, width/2-(mv.width/2), height/2-(mv.height/2));
    livingroom();
    
    whiskyhalo.display();
    whiskyhalo.animate();
    whiskyhalo.instruct();
    whiskyhalo.interpret();
    
    windowblinds1.display();
    windowblinds1.closing();    
    
    windowblinds2.display();
    windowblinds2.closing();
    
    words();
    subs();
    
  }
  
  if (scene == 4){
    sceneCanvas();
    Window();
    image(mv, width/2-(mv.width/2), height/2-(mv.height/2));
    kitchen();
    
    fruithalo.display();
    fruithalo.animate();
    fruithalo.instruct();
    fruithalo.interpret();
    
    magnethalo.display();
    magnethalo.animate();
    magnethalo.instruct();
    magnethalo.interpret();
    
    windowblinds1.display();
    windowblinds1.closing();    
    
    windowblinds2.display();
    windowblinds2.closing();
    
    words();
    subs();    
  }
  
  timebar();
  playpause();
  sceneRec();
 
  //words();
  
}

void movieEvent(Movie m) {
  m.read();
}

void mousePressed(){ 
  if (dist(mouseX, mouseY, width/6-left.width/2,height-left.height*4)<left.width){       
      scene --;      
    }
   
  if (dist(mouseX, mouseY, width*5/6-right.width/2,height-right.height*4)<right.width){   
      scene ++;
    } 
}

void keyPressed(){ 
  if (key == CODED){
    if (keyCode ==LEFT) {       
      scene --;      
    }
  }
   
  if (key == CODED){
    if (keyCode ==RIGHT) {
      scene ++;
    } 
  }
}