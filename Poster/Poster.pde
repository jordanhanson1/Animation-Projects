size(400,400);
//background(#FF920D);

for (int i=0; i<100; i+=10){
  for (int j=0; j<100; j+=10){
    noStroke();
fill(#FF0B03);
circle(5*i,5*j,90);
fill(#FF3503);
circle(5*i,5*j,70);
fill(#FF5703);
circle(5*i,5*j,50);
fill(#FF9F03);
circle(5*i,5*j,30);
fill(#FFC608);
circle(5*i,5*j,10);
  }}



fill(#050500);
textSize(32);
text("CISE Career Fair", 72, 30);
textSize(8);
text("Date: Feb. 1, 2021", 158, 45);
text("Time: 10 a.m. to  6 p.m.", 148, 55);
text("Location:  This will be a virtual event.", 125, 65);


  textAlign(CENTER, CENTER);
  textSize(80);
  fill(#1B08FF);
  text("U", width/2-25, height/2-85);
  text("F", width/2+25, height/2-85);
  
  
  fill(#aaa9ad);
  rect(40,190,170,120);
  fill(#000000);
  rect(50,200,150,100);

textSize(10);
fill(#FC0DF9);
text("<h1>", 70, 210);

fill(#FFFFFF);
text("Go Gators", 120, 210);


fill(#FC0DF9);
text("</h1>", 60+110, 210);
  
//second html element  
fill(#FC0DF9);
text("<p>", 65, 210+30);
fill(#FC0DF9);
text("</p>", 60+120, 210+30);
fill(#FFFFFF);
text("Come to CISE", 120, 210+30);
text("Career Fair 2021", 120, 210+40);
fill(#FC0DF9);
text("<p>", 65, 210+40);
fill(#FC0DF9);
text("</p>", 60+120, 210+40);


textSize(9);
fill(#FC0DF9);
text("<img", 65, 210+60);

fill(#10FF05);
text(" src", 85, 210+60);

fill(#FDFFFC);
text("=", 85+11, 210+60);

fill(#FDFFFC);
text("\"GatorsLogo.jpg\"", 85+50, 210+60);
fill(#FC0DF9);
text(">", 85+92, 210+60);

fill(255);
rect(250,170,100,150);

fill(0);
textSize(12);
text("Resume", 300, 180);
text("_______",300, 184);
textSize(9);
text("- Web Developer", 302, 210);
text("- Coding Genius", 300, 230);
text("- Basically Elon Musk", 300, 250);
text("- Please Hire Me", 300, 270);
