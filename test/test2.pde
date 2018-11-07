//2016114146 허정은 제출합니다.
//팔다리가 움직이는 로봇입니다.
 
 
int xLocation = 100; 
float a=0.3;
float b=0.3;
 
void setup() 
{ 
size(200, 200, P3D); 
 
} 
 
 
void draw()  
{  
  
background(128);  
stroke(0);
 
head();
body();
arm();
leg();
 
}
 
void head(){
 
pushMatrix();  
translate(xLocation, 57, 0);  
rotateY(-0.5);
rotateX(-0.3);
 
pushMatrix();
translate(0,-20,0);
box(15);
popMatrix();
 
pushMatrix();
translate(-20,0,0);
box(5,10,5);
popMatrix();
 
pushMatrix();
translate(+20,0,0);
box(5,10,5);
popMatrix();
 
pushMatrix();
translate(-10,5,+15);
sphere(5);
popMatrix();
 
pushMatrix();
translate(+10,5,+15);
sphere(5);
popMatrix();
 
box(30);  
popMatrix();  
}
 
void body(){
     pushMatrix();  
translate(xLocation, height/2, 0);  
rotateY(-0.5);
rotateX(-0.3);
 
box(50);  
 popMatrix();
}
 
void rightarm(){
 
pushMatrix();
translate(-30,0,0);
box(8,50,5);
popMatrix();
 
}
 
void leftarm(){
 
pushMatrix();
translate(30,0,0);
box(8,50,5);
popMatrix();
 
}
 
void rightleg(){
  pushMatrix();
translate(-10,30,0);
box(10,50,10);
popMatrix();
}
void leftleg(){
  pushMatrix();
translate(10,30,0);
box(10,50,10);
popMatrix();
}
 
void arm(){
    pushMatrix();  
translate(xLocation, height/2, 0);  
rotateY(-0.5);
 
 
turn1();
 
  rightarm();
leftarm();
popMatrix(); 
}
 
void turn1(){
  rotateX(a);
  a=a+0.01;
  if(a>1){
    a=0.3;
  }
}
 
 
void leg(){
      pushMatrix();  
translate(xLocation, height/2, 0);  
rotateY(-0.5);
 
turn2();
 
  rightleg();
leftleg();
popMatrix();
}
void turn2(){
  rotateX(b);
  b=b-0.01;
  if(b<0){
    b=0.4;
  }
}
