private double fractionLength = .86; 
private int smallestBranch = 23; 
private double branchAngle = .22;  
public void setup() 
{   
  size(1000,1000);    
	//noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(350,1000,350,800);   
	drawBranches(350, 800, 150-mouseY*0.17, 3*Math.PI/2);  
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1=angle+branchAngle;
  double angle2=angle-branchAngle;
  
  int endX1 = (int)(branchLength*Math.cos(angle1)+x);
  int endY1 = (int)(branchLength*Math.sin(angle1)+y);
  int endX2 = (int)(0.2*branchLength*Math.cos(angle2)+x);
  int endY2 = (int)(0.2*branchLength*Math.sin(angle2)+y);;
  
  branchLength*=fractionLength;
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  
  if(branchLength>smallestBranch){
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
  }
} 
