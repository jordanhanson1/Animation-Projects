float start=0;
float trig(float ang){
  float point= sin(2*PI*ang/300)-2*sin(2*PI*ang/300)*sin(2*PI*ang/300)*sin(2*PI*ang/300);
  return 100*point;
}

 void drawPartFunc(float x1, float x2){
   stroke(255);
   strokeWeight(10);
   float y1=trig(x1);
   float y2=trig(x2);
   line(x1,y1,x2,y2);
 }


void setup(){
  frameRate(15);
  size(400,400);
}

void draw(){
  background(0);
  translate(-start,200);
  for (float i=start; i<400+start; i++){
    drawPartFunc(i,i+1);
  }
  start+=0.5;
  
}
