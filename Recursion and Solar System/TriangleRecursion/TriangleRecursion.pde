

void drawTriangle(int x, int y, int size){
if (size==0){
  return;
}

float r=random(255);
float g=random(255);
float b=random(255);
fill(r,g,b);
triangle(x+size, y,x,y-size,x+size,y+size);
triangle(x-size, y,x,y+size,x+size,y+size);

drawTriangle(x, y, size-10);

}

void setup(){
background(#1DE4ED);
size(400,400);
drawTriangle(0,0,400);
}
