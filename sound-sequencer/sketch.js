var song;
var dream;
var stars;
var real;

var bricks;
var bricks2;
var bricks3 = [];
var bars;
var sparkArray = [];

var myFont;


function preload(){
	song = loadSound("assets/song.mp3");

	dream = loadSound("assets/dream.mp3");
	stars = loadSound("assets/stars.mp3");
	real = loadSound("assets/real.mp3");

	myFont = loadFont("assets/pixelate.ttf");
}

function setup(){
	createCanvas(1600,900);
	
	song.play();
	
	if (frameCount==1 || frameCount %100 ==0){
		dream.play();
	}
	
	bricks = new Bricks(10,20,1.5,-1, stars,700,0,255, 200,210);
	bricks2 = new Bricks(630,50,2.5,-1, real,random(1300,1550),random(330,600),203,235,255);
	

	bars = new Bars(1, 255);

	for (var i=0; i < 100; i ++){
		sparkArray[i] = new Spark2(width/2, 0, width/2, height/2,random(4,6),random(4,8));
		
	}	
}
	
function draw(){
	background(random(10,35));
	fill(255,random(200,245));
	ellipse(width/2, height/2,random(140,150),random(140,150));
	//background(255);

	if (stars.isPlaying()){
		fill(255,200,210,random(200,245));
		ellipse(width/2, height/2,random(140,150),random(140,150))
		fill(255);
		textFont(myFont);
		textAlign(CENTER);
		textSize(random(198,200));
		text('"stars,oh"', width/2, height/2)
	}

	if (real.isPlaying()){
		fill(255);
		textFont(myFont);
		textAlign(CENTER);
		textSize(random(98,100));
		text('"it was real for me"', width/2, 600)
	}
	fill(0);
	bricks.display();
	bricks.animate();

	bricks2.display();
	bricks2.animate();

	bars.display();
	bars.animate();


	for (var i=0; i<sparkArray.length; i++){
		
		sparkArray[i].display();
		sparkArray[i].animate();
		
	}

}


function Spark2(spark2X, spark2Y, center1, center2, spark2XVel, spark2YVel){
	
	this.x = spark2X;
	this.y = spark2Y;
	this.center1 = center1;
	this.center2 = center2;
	this.xVel = spark2XVel;
	this.yVel = spark2YVel;
	

	this.display = function(){
		stroke(255,50);
		strokeWeight(2);
		var controller = map(mouseY, 0, height, 0,height);
		line(this.x + controller, this.y +controller, this.center1, this.center2);

		
	}

	this.animate = function(){

		this.x = this.x + this.xVel;

		if (this.x>width || this.x<0){
			this.xVel = this.xVel * -1
		}	
		
		this.y = this.y + this.yVel;

		if (this.y>this.x || this.y<this.x){
			this.yVel = this.yVel * -1
		}
	}
}

function Bricks(brickX, brickSize,speed, mySpeedDelt, charm, stopper, starter,redVal, greenVal, blueVal){
	this.x = brickX;
	this.y = 20;
	this.size = brickSize;
	this.XVel=speed;
	this.charm= charm;
	this.stopper = stopper;
	this.starter = starter;
	this.blue=blueVal;
	this.green=greenVal;
	this.red=redVal;
	this.SpeedDelt= mySpeedDelt;
	
	

	this.display = function(){
		push();
		noStroke();
		for (j=0; j<50; j ++){
		fill(redVal,this.green,this.blue,random(200,245));
		rect(this.x, this.y * j+10, this.size,10)
		}

		pop();
	}

	this.animate = function(){
		this.x = this.x + this.XVel;
		if (this.x > this.stopper){
			this.XVel = (this.XVel) * this.SpeedDelt;
			this.charm.play();
			fill(255,200,210);
			
		}
		if (this.x <= this.starter){
			this.XVel = (this.XVel) * this.SpeedDelt;
		}

		if (this.x <= 0){
			dream.play();
		}
	}
	
}

function Bars(fertX,barsSize){
	this.x = fertX;
	this.y = 0;
	this.XVel = 0.5;

	this.display = function(){
		push();
		for (j=0; j<30; j ++){
		fill(0,this.opacity);
		rect((this.x+random(1,4))*j, this.y, random(1,10),height)
		}	
		pop();
	}

	this.animate = function(){
		this.x = this.x + this.XVel;
		if(this.x>50){
			this.XVel = 0;
		}

		
		
	}
	
}

function keyPressed(){
	song.pause();
}

function keyReleased(){
	song.play();
}

function mousePressed(){
	dream.play();
}
 
