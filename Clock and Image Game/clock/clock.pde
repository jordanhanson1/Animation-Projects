PImage back;
void setup(){
  back=loadImage("clock.png");
size(224,225);
}

void drawMarks(){
strokeWeight(3);
for (int i=0;i<12; i++){
  pushMatrix();
rotate((2*PI* i) /12);
line(0, -90, 0, -100);



 
popMatrix();
}
}


void drawNumbers(){
  pushMatrix();
  translate(-6,6);

  for (int i=0; i<12; i++){
    pushMatrix();
    rotate(radians(i*360/12));
    pushMatrix();
    translate(0,-78.86);
    rotate(-radians(i*360/12));
    textSize(15);
    fill(0);
    if (i==0){
      text(12, 0, 0);
    }
    else
      text(i, 0, 0);
     
   popMatrix();
   popMatrix();
}
  
  popMatrix();
}

void draw(){
background(back);
translate(height/2,width/2);
drawMarks();
drawNumbers();

float s = map(second(),0,60,0,PI*2)-PI;
//print(second());
pushMatrix();
rotate(s);
line(0,0,0,100);
popMatrix();

s = map(minute(),0,60,0,PI*2)-PI;
//print(minute());
pushMatrix();
rotate(s);
strokeWeight(4);
line(0,0,0,80);
popMatrix();

s = map(hour(),0,12,0,PI*2)-PI;
//print(minute());
pushMatrix();
rotate(s);
strokeWeight(6);
line(0,0,0,60);
popMatrix();

}
