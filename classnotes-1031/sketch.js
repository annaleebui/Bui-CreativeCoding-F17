var myShape;
var myShape2;

function setup(){
	createCanvas(500,500);
	noStroke();

	myShape = new Shape(200,200,8,2,50,220,180,160);
	myShape2 = new Shape(100,100,10,4,70,150,160,190);
	

}

function draw(){
	background(255)

	myShape.animate();
	myShape.display();

	myShape2.animate();
	myShape2.display();



}

function Shape(xPos, yPos, myXVel, myYVel,mySize,myRed,myGreen,myBlue){
	this.x = xPos;
	this.y = yPos;
	this.xVel = myXVel;
	this.yVel = myYVel;
	this.size = mySize;
	this.red = myRed;
	this.green = myGreen;
	this.blue= myBlue;

	this.display = function(){
		fill(this.red, this.green, this.blue);
		ellipse(this.x, this.y, this.size, this.size);

	}

	this.animate = function(){
		this.x = this.x + this.xVel;

		if (this.x>width || this.x<0){
			this.xVel = this.xVel * -1
		}
	
		
		this.y = this.y + this.yVel;

		if (this.y>height || this.y<0){
			this.yVel = this.yVel * -1
		}

	}
}