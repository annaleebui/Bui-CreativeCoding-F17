/*
function setup(){
	createCanvas(600,600);
	background(200);

	console.log("Launched the screen!");

}

function draw(){
	/*background(200);
	if (mouseIsPressed){
		fill(0,255,0);
		rect(mouseX,mouseY,100,100);
	}


	var myDistance = dist(mouseX, mouseY, pmouseX, pmouseY);
	strokeWeight(myDistance);
	stroke(myDistance);
	if (mouseIsPressed){
		line(mouseX,mouseY,pmouseX,pmouseY);
	}
}

function mouseDragged(){
	fill(180,80,50);
	noStroke();
	ellipse(mouseX, mouseY,40,40);
}

*/

//color exercise
function setup(){
	createCanvas(600,600);

}

function draw(){
	background(255);
	noStroke();

	if (mouseX > width/2){
		fill(201,240,255);
		rect(width/2, 0, width/2, height);
	}

	if (mouseIsPressed && mouseX> width * 0.75){
		fill(255,231,111);
		rect(0,0,width,height);
	}

	if (mouseX<width/2 && mouseY<height/3){
		fill(197,224,220);
		rect(0,0,width/2,height/3);
	}

	if (mouseX<width/2 && mouseY>height/3){
		fill(232,143,133);
		rect(0, height/3, width/2, height*(2/3));
	}
}

