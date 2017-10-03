



function setup(){
	createCanvas(420,442.5);
	background(247,247,249);
	fill (36,58,69);
	noStroke();


	for(var y=1; y<14; y++){
		var b= 255-(14*x);		
		for(var x=0; x<13; x++){
			var b=50+x*10+y*5;
			var r=30+x*15;
			var g=30+x*15;
			fill(r,g,b);
			ellipse ((x*32)+10, (y*(y*1.75)+105), 16, y*1.25);
		}
		
	} 

	for(var y=1; y<14; y++){
		for(var x=0; x<13; x++){
			var b=50+x*10+y*5;
			var r=30+x*15;
			var g=30+x*15;
		
			fill(r,g,b);
			ellipse ((x*32)+26, (y*(y*1.75)+105+(y*1.75)), 16, y*1.25);
		}
		
	}


	for(var y=0; y<6; y++){
		for(var x=0; x<13; x++){
			push();
			var b= 255-(14*x);
			var r=220-(x*23);
			var g=240-(x*15);	
			fill(r,g,b);
			ellipse ((x*32)+10, y*(32-y*2.75)+10, 16,16-y*3);
			pop();
		}
		
	} 


	for(var y=0; y<6; y++){
		for(var x=0; x<13; x++){
			var b= 255-(14*x);
			var r=220-(x*23);
			var g=240-(x*15);	
			fill(r,g,b);	
			ellipse ((x*32)+26, y*(32-y*2.75)+10+(16-y*2.75), 16,16-y*3.25);
		}
		
	}




}

function draw(){
	
}