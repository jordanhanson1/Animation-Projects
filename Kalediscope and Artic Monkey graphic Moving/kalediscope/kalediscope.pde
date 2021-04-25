int numPattern = 16;
float theta;
float rot = 2*PI/numPattern;
float delta_theta = 0.04;
color[] colors = {#FFFFFF, //white
                  #000000, //black
                  #37B400, //green
                  #E2F2F8, //light green
                  #A4D49D, //pale green
                  #8C7853, //brass
                  #00AEEF, //bright blue
                  #5573B7, //ocean blue
                  #6CCFF7, //light blue
                  #70DB93, //navy
                  #F16522, //orange
                  #DBDB70, //light yellow
                  #FFF100, //bright yellow
                  #FFFF00, //yellow
                  #FBAF00, //golden
                  #FDC68C, //dark yellow
                  #A763A9, //purple
                  #652C91, //purple blue
                  #BC8CBF, //light purple
                  #2F3192, //blue purple
                  #FF0000, //red
                  #F16D7E, //earth red
                  #ED008C, //dark red
                  #F49BC1, //pink
                  #ED00FF, //rose 
                  #8E236B, //brown red
                  #5C3317 //chocolate
};
    
void setup() {
  size(500, 500);
  background(0);
  noStroke();
  colorMode(HSB);
  noFill();
  theta = 0;
  noLoop();
  smooth();
}

void drawLines(float x1, float y1, float x2, float y2, int sw, color c) {
  int s = 1;

  for(int i=0; i<numPattern; i++) {
    rotate(rot);
    pushMatrix();
    scale(s, 1);
    
    stroke(c);
    strokeWeight(sw);
    line(x1, y1, x2, y2);

    popMatrix();
    s *= -1;
  }
    
}

void drawArcs(float cx, float cy, float w, float h, float rotEllip, float a1, float a2, int sw, color c) {
  int s = 1;
  float rotang  = 0;//rot;

  for(int i=0; i<numPattern; i++) {
    pushMatrix();
    rotate(rotang);
    scale(s, 1);
    
    pushMatrix();
    translate(cx, cy);
    rotate(rotEllip);
    stroke(c);
    strokeWeight(sw);
    arc(cx, cy, w, h, a1, a2);

    popMatrix();
    popMatrix();
    s *= -1;
    rotang+= rot;
  }  
}

void draw() {
  translate(width/2, height/2);

drawArcs(0, 0, 340, 700, 1.6, 0, PI, 2, colors[8]);
drawArcs(0, 0, 300, 150, 5, 0, PI, 4, colors[8]);

   drawArcs(80, 100, 50, 0, 0.8, -PI/4, PI/4, 8, colors[20]);
   
   for (int i=0; i<10; i++){
     drawArcs(0, 0, 50-5*i, 50-5*i, 0.6, 0, 2*PI, 10, colors[20]);
   }
 
 
  
  
  save(" kaleidoscopeJH.tif");
}
