float alpha = 1;
float beta = 0;
float gamma = 0;

float zeta = 0.75;
 

 void setup(){
  size(1000, 900, P3D);
  smooth(10);
   lights();
   
camera(110, 100, 100, 0, 0, 0, 0, 0, -1);
noStroke();  
}

void draw(){
  
  background(255);
if(keyPressed){
    if (key == CODED) {
      if (keyCode == RIGHT ) {
      alpha = alpha + zeta;
    }
    }
    
    if (key == CODED) {
      if (keyCode == LEFT ) {
      alpha = alpha - zeta;
    }
    }
    
    if (key == CODED) {
      if (keyCode == DOWN ) {
      beta = beta + zeta;
    }
    }
    
    if (key == CODED) {
      if (keyCode == UP ) {
      beta = beta - zeta;
    }
    }
    if (key == CODED) {
      if (keyCode == CONTROL ) {
      gamma = gamma + zeta;
    }
    }
    
    if (key == CODED) {
      if (keyCode == SHIFT ) {
      gamma = gamma - zeta;
    }
    }
  }
    
 
 //base
  translate(0,0,-50);
  fill(#050000);
  box(20);


//link1
rotateZ(radians(alpha));
 translate(0,0,15);
  fill(#2139CB);
  box(10,10,20);


//body1
translate(5,9,5);
  fill(#B7B7B7);
  box(20,8,-10);


//link2
rotateX(radians(beta));
translate(15,-28.5,0);
fill(#2139CB);
box(10,65,10);


//body2
translate(-15,-27.5,0);
  fill(#B7B7B7);
  box(20,10,10);


//link3
rotateX(radians(gamma));
translate(-17.5,0,5);
  fill(#444548);
  box(15,10,20);


//nose
translate(0,25,13.5);
  fill(#2139CB);
  box(7,50,7);


//sentan
translate(0,26,0);
  fill(#E02B07);
  box(3,2,3);
}
