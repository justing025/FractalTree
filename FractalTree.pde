
private double fractionLength = .8;
private int smallestBranch = 10;
private double branchAngle =0.3;// Math.random()*0.4+0.1; 

public void setup()
{  
	size(640,480);   
	noLoop();
}
public void draw()
{  
	background(0);  
	stroke(139,69,19);
	strokeWeight(3.5);
	line(320,480,320,380);
	drawBranches(320,380,100,3*Math.PI/2);  
}

public void drawBranches(int x,int y, double branchLength, double angle)
{  
	 double angle1=angle+ branchAngle;
	 double angle2=angle- branchAngle;
	branchLength=branchLength*fractionLength;
	 int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	 int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	 int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	 int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	 strokeWeight(3.5);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	if(branchLength>smallestBranch)
	{
		stroke(25,20,25);
		strokeWeight(2);
		drawBranches(endX1, endY1, branchLength, angle1);
		drawBranches(endX2, endY2, branchLength, angle2);
	}else{
		fill(0,255,56);
		ellipse(endX1, endY1,8,8);
		ellipse(endX2,endY2, 8,8); 
	}
}
