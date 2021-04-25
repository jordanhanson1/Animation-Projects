import java.util.Collections;
PImage img;
ArrayList<PImage> images= new ArrayList<PImage>();
ArrayList<Integer> nums= new ArrayList<Integer>();
int imagePick=-1;
int numClicks=0;
boolean gameOver=false;
boolean setImage=false;
boolean[] positions= new boolean[4];
 boolean win=false;
 
void setup(){
  img=loadImage("images.jpg");
  size(284,177);
  for (int i=0; i<4; i++){
  nums.add(i);
  positions[i]=false;
}
  images.add(img.get(0,0,img.width/2, img.height/2));
  images.add(img.get(img.width/2,0,img.width/2, img.height/2));
  images.add(img.get(0,img.height/2,img.width/2, img.height/2));
  images.add(img.get(img.width/2,img.height/2,img.width/2, img.height/2));
  Collections.shuffle(nums);
  
}

void draw(){
  
  if (gameOver !=true){
  int numImage=-1;
  for (int i=0;i<2;i++){
    for (int j=0; j<2;j++){
      numImage++;
    image(images.get(nums.get(numImage)), i*width/2, j*height/2);
  }
  }}
  
  if (gameOver==true){
  int numImage=-1;
  for (int i=0;i<2;i++){
    for (int j=0; j<2;j++){
      numImage++;
    image(images.get(numImage), j*width/2, i*height/2);
  }}
  
  }
  
  if (gameOver==true){
    fill(#FF0303);
    stroke(#FF0303);
    textSize(25);
    win=true;
    for (int i=0; i<4; i++){
      if (positions[i]==false)
        win=false;
    }
    if (win)
      text("You Win", width/2-47,height/2);
    else
      text("Try Again", width/2-47,height/2);
  }
}

void mouseClicked() {
  if (mouseX<width/2 && mouseY<height/2){
    if (nums.get(0)==numClicks){
      positions[0]=true;
    }
  }
  if (mouseX>width/2 && mouseX<width && mouseY<height/2){
    if (nums.get(2)==numClicks){
      positions[2]=true;
    }
  }
  if (mouseX<width && mouseY>height/2){
    if (nums.get(1)==numClicks){
      positions[1]=true;
    }
  }
  if (mouseX>width/2 && mouseX<width && mouseY>height/2 && mouseY<height){
    if (nums.get(3)==numClicks){
      positions[3]=true;
    }
  }
  numClicks++;
  if (numClicks==4){
    gameOver=true;
  }
 }
