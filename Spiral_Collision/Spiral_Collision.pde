int position1;
int position2;
boolean oneMove=true;
boolean twoMove=true;

float radiusB=2*width;
float radiusB1=0;
  float radiusDB=0.09;
  int angB=0;
void setup(){
  colorMode(HSB,360,360,360);
  size(400,400);
  smooth();
  position1=0;
  position2=width/2;
}


void draw(){
  
  
  if (angB>=360*6){
    angB=0;
  }
  background(255);
  float radius=width/2;
  float radiusD=0.09;
  int iter=0;
  float colors=0;
  translate(width/2,height/2);
  for (int ang=0; ang<360*6; ang++){
    float x = radius * cos(radians(ang));
    float y = radius * sin(radians(ang));
    float x2 = radius * cos(radians(ang+1));
    float y2 = radius * sin(radians(ang+1));
    strokeWeight(5);
    stroke(colors,360,360);
    radius=radius-radiusD;
    line(x,y,x2,y2);
    colors+=0.8/5;
  }
 
  float posx=radiusB * cos(radians(angB));
  float posy=radiusB * sin(radians(angB));
  float posx2=radiusB1 * cos(radians(angB));
  float posy2=radiusB1 * sin(radians(angB));
  fill(0);
  noStroke();
  if (oneMove==false){
  ellipse(posx,-posy,20,20);
  }
  else{
  ellipse(posx,posy,20,20);
  }
  fill(#FAFF03);
  noStroke();
  if (twoMove==false){
  ellipse(posx2,-posy2,20,20);
  }
  else{
  ellipse(posx2,posy2,20,20);
  }
  
  if (radiusB<5){
    oneMove=false;
  }  
  if (radiusB>=194){
    oneMove=true;
  }  
 if (radiusB1<5){
    twoMove=false;
  }  
  if (radiusB1>=194){
    twoMove=true;
  }  
  
  //check if intersecting
  if (abs(posx-posx2)<=6&&abs(posy-posy2)<=6){
    oneMove= oneMove? false:true;
    twoMove= twoMove? false:true;
  }
  
  angB++;
  
  if (oneMove==true){
  radiusB=radiusB-radiusDB;
  }
  else{
  radiusB=radiusB+radiusDB;
  }
  if (twoMove==true){
  radiusB1=radiusB1-radiusDB;
  }
  else{
  radiusB1=radiusB1+radiusDB;
  }

}
