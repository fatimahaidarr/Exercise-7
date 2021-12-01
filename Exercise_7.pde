
 
float theta;   

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  
  float a = (mouseX / (float) width) * 90f;
  
  theta = radians(a);
  
  translate(width/2,height);
 
  noFill();
  circle(0, 0, 200);
  
  translate(0,-200);
  
  branch(200);

}

void branch(float h) {
  
  h *= 0.66;
  
  
  if (h > 2) {
    pushMatrix();    
    rotate(theta);  
    circle(0, 0, -h);  
    translate(0, -h  *0.6); 
    branch(h);       
    popMatrix();     
    
    
    pushMatrix();
    rotate(-theta);
    circle(0, 0, h);  
    translate(0, -h * 0.6);
    branch(h);
    popMatrix();
  }
}
