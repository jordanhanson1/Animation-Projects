class Planet{
float ang= 0;
float size;
float radius;
int count;
color coler;
float speed;
Planet(int siz, int rad, color col, float speed){
  size=siz;
  radius=rad;
  count=0;
  coler=col;
  this.speed=speed;
}
void drawPlanet(){
noStroke();
fill(coler);
float x=200;
float y=200;
if (radius !=0){
 x = 200 + cos(ang) * radius;
 y = 200 + sin(ang) * radius;}
 
ellipse(x,y,size,size);

ang+=speed;

}

}


Planet planet=new Planet(50,100,#0FF0DB,0.01);
Planet third= new Planet(30,150,#F02D0F,0.08);
void setup(){
size(400,400);
}

void draw(){
background(0);
Planet sun=new Planet(100,0,#F0DA0F,0);
sun.drawPlanet();
planet.drawPlanet();

third.drawPlanet();


}
