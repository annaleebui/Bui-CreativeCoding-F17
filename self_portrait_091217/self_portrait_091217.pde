size(700,400);
background(#e9f7f7);

int myW=350;

//border
noStroke();
fill(#000000);
rect(0,0,720,50);
rect(0,350,720,50);

//middle separator
fill(#000000,30);
rect(395,50,7,300);
fill(#000000,70);
rect(385,50,10,300);
fill(#000000,130);
rect(370,50,15,300);
fill(#000000,200);
rect(myW,50,20,300);
fill(#000000);
rect(myW,50,10,300);
fill(#000000);
rect(myW,50,5,300);


//beach scene
//sky
fill(#9eb1b1,150);
rect(myW,50,myW,50);
fill(#9eb1b1,110);
rect(myW,100,myW,30);
fill(#9eb1b1,70);
rect(myW,130,myW,20);
fill(#9eb1b1,30);
rect(myW,150,myW,10);
fill(#e9f7f7,100);
rect(myW,50,myW,160);

//water
fill(#9eb1b1,50);
rect(myW,160,myW,3);
fill(#9eb1b1,40);
rect(myW,160,myW,20);
fill(#9eb1b1,90);
rect(myW,180,myW,20);
fill(#9eb1b1,150);
rect(myW,200,myW,10);
fill(#9eb1b1,200);
rect(myW,210,myW,10);
fill(#9eb1b1);
rect(myW,220,myW,25);
fill(#ffffff,60);
rect(myW,230,myW,10);
fill(#ffffff);
rect(myW,240,myW,10);

//sand
fill(#c4b99c);
rect(myW,250,myW,5);
fill(#c4b99c,160);
rect(myW,250,myW,100);
fill(#e8ae1c,30);
rect(myW,280,myW,20);
fill(#e8ae1c,50);
rect(myW,300,myW,30);
fill(#e8ae1c,80);
rect(myW,330,myW,20);

//polaroid
fill(#ffffff);
rect(497,195,6,87);
rect(599,195,6,87);
rect(497,195,108,7);
rect(497,267,108,16);

//subway

fill(#e8ae1c,80);
rect(0,50,350,300);//doors
fill(#ffffff,150);
stroke(#c4b99c,180);
strokeWeight(3);
rect(0,60,100,20);//left upper sign
rect(200,60,100,20);//right upper sign

//subway light effect(right)
noStroke();
fill(#000000);
rect(185,115,125,80);
rect(185,230,115,30);
fill(#ffffff);
rect(185,190,130,30);
rect(185,200,110,30);
rect(260,145,100,10);

//subway light effect(left)
noStroke();
fill(#000000);
rect(0,110,115,125);
rect(0,265,115,35);
fill(#ffffff,150);
rect(0,210,90,20);
rect(0,220,110,30);
rect(40,145,60,10);
rect(0,130,110,20);

//subway windows
stroke(#9eb1b1);
strokeWeight(0);
fill(#000000,100);
rect(0,110,115,205,0,16,0,0);//left window 
rect(185,110,130,205,16,16,0,0);//right window

//human ghost
noStroke();
fill(#e8ae1c,100);
//ghost head
triangle(200,128,260,128,230,180);
rect(205,120,50,45);
//ghost body
rect(191,182,78,100);
//ghost boobs
triangle(210,182,230,222,191,222);
triangle(250,182,230,222,270,222);
triangle(195,202,225,202,210,227);
triangle(235,202,265,202,250,227);
//ghost hip
triangle(230,230,280,315,180,315);

noStroke();
fill(#e9f7f7,30);
//ghost head
triangle(200,128,260,128,230,180);
rect(205,120,50,45);
//ghost body
rect(191,182,78,100);
//ghost boobs
triangle(210,182,230,222,191,222);
triangle(250,182,230,222,270,222);
triangle(195,202,225,202,210,227);
triangle(235,202,265,202,250,227);
//ghost hip
triangle(230,230,280,315,180,315);

//subway light effect(on top of ghost)
fill(#ffffff,120);
rect(185,200,110,15);
fill(#000000,170);
rect(270,250,40,60);

//subway windows
stroke(#9eb1b1);
strokeWeight(10);
fill(#000000,100);
rect(0,110,115,205,0,16,0,0);//left window 
rect(185,110,130,205,16,16,0,0);//right window

noStroke();
fill(#000000,120);
rect(142,50,16,300);//window separater
fill(#000000,120);
rect(147,50,6,300);//window separater shadow


//subway ghost 2
fill(#c4b99c,50);
rect(0,70,100,20);//left upper sign
rect(195,70,100,20);//right upper sign
rect(0,120,115,205,0,16,0,0);//left window 
rect(175,120,130,205,16,16,0,0);//right window
rect(142,60,16,290);//window separater
rect(147,60,6,290);//window separater shadow

//subway ghost
fill(#000000,50);
rect(0,50,350,300);//doors
rect(10,65,100,20);//left upper sign
rect(210,65,100,20);//right upper sign
rect(10,115,115,205,0,16,0,0);//left window 
rect(195,115,130,205,16,16,0,0);//right window
rect(152,50,16,300);//window separater
rect(157,50,6,300);//window separater shadow



//drawing human
noStroke();
//human head
fill(#ebcbb9,40);
triangle(300,100,400,100,350,175);
fill(#9f3a1b,70);
triangle(300,100,400,100,350,175);
fill(#9eb1b1,150);
triangle(300,100,400,100,350,175);
fill(#e8ae1c,120);
rect(310,95,80,60);
fill(#c4b99c,80);
rect(325,125,50,40);
fill(#e8ae1c,140);
rect(325,125,50,40);

//human arms
fill(#c4b99c,140);
triangle(275,175,200,275,350,275);//left arm shape
fill(#e8ae1c,60);
triangle(275,175,200,275,225,275); //left upper arm
fill(#ebcbb9, 150);
rect(230,50,12,300);//subway pole
fill(#e8ae1c,80);
triangle(218,250,200,275,350,275); //left lower arm

fill(#c4b99c,140);
triangle(425,175,425,300,350,300);//right arm shape
fill(#e8ae1c,60);
triangle(425,175,425,300,400,300);//right upper arm
triangle(425,275,425,300,350,300);//right lower arm

//human torso
fill(#9eb1b1,225);
triangle(325,175,300,225,350,225);//leftboob
fill(#9eb1b1,225);
triangle(375,175,350,225,400,225);//rightboob

fill(#e8ae1c,150);
triangle(275,175,425,175,350,300);//upperback
fill(#9f3a1b,100);
triangle(275,175,425,175,350,300);//upperback

fill(#e8ae1c,150);
triangle(350,250,285,350,415,350);//lowerback
fill(#9f3a1b,100);
triangle(350,250,285,350,415,350);//lowerback

fill(#9eb1b1,225);
rect(313,210,74,95);//abs?
fill(#e8ae1c,150);
triangle(275,175,350,175,300,250);//left shoulder
triangle(350,175,425,175,400,250);//right shoulder
rect(300,200,100,125);//torsalbackfat

fill(#9f3a1b,100);
triangle(350,175,300,250,300,265);//left shoulder shadow
fill(#9eb1b1,100);
triangle(350,175,300,250,300,265);//left shoulder shadow
fill(#9f3a1b,100);
triangle(350,175,400,250,400,266);//right shoulder shadow
fill(#9eb1b1,100);
triangle(350,175,400,250,400,266);//right shoulder shadow

fill(#9f3a1b,100);
rect(347,190,6,150);//spine
fill(#9eb1b1,100);
rect(347,190,6,150);//spine
fill(#9f3a1b,100);
triangle(350,190,348,340,352,340);//spine