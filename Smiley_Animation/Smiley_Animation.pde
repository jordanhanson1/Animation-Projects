int x=0;
boolean diff;
void setup(){
size(400,400);

}

void draw(){
x++;
if (x>15){
background(#0AE4FF);
}

if (x<15){
background(#2DFA2F);
}
if (x==30){
x=0;
background(#0AE4FF);
}


rectMode(CENTER);
fill(#FFF308);
circle(200, 200, 300);


//eyes
fill(#000000);
if (x<=20){
ellipse(150, 150, 50,65);
ellipse(250, 150, 50,65);
}
if (x>20){
line(125, 150, 175,150);
line(275, 150, 225,150);
}


fill(#F00C0C);
arc(200, 230, 90, 80, 0, PI, CHORD);

fill(#FFFFFF);
arc(200, 230, 90, 35, 0, PI, CHORD);
}
