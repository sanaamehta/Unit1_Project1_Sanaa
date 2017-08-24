import processing.sound.*;

int branchx= 25;
int branchy = 50;
int branchpositionx= 250;
int branchpositiony= 500;
int branchdirection= 3;
//branch
int poppyx= 1200;
int poppyy= 900;
int poppypositionx= 250;
int poppypositiony = 500;
int poppydirection= 3;
//poppy
int bergenx= 600;
int bergeny= 46;
//bergen

PImage branch;
PImage poppy;
PImage bergen; 
color col;

SoundFile file;

void setup()
{
  fullScreen();
  
 //WYA
 textSize(200);
text("Trolls", 450, 600);
fill(#58F00F);
loadFont ("trollsfont.vlw");


  branch = loadImage("branch.png");
  poppy= loadImage ("poppy.png");
  bergen= loadImage ("bergen.png");
  col= color (random(300), random(300), random(300));
  file = new SoundFile(this, "trollsong.mp3");
  file.play();
  file.jump(25);
  
 
}

void draw()
{
  background (col);

  image(bergen, bergenx, bergeny, 250, 550);
  
 image(poppy, poppyx, poppyy, poppypositionx, poppypositiony);
 poppyy= poppyy- poppydirection ;
 
 if (poppyy < 0) 
 {
    poppydirection= poppydirection*-1;
 }
 
if (poppyy > height) 
//why won't they stop at the bottom
{
poppydirection = poppydirection*-1;
}

  image (branch, branchx, branchy, branchpositionx, branchpositiony);
 branchy= branchy- branchdirection;
 
 if (branchy < 0)
 {
   branchdirection= branchdirection*-1;
 }
 
 if (branchy > height)
 {
 branchdirection= branchdirection*-1;
 }


  fill(#053798);
  stroke(#053798);
  ellipse(56, 46, 55, 55);
  fill(#086424);
  stroke(#086424);
  ellipse(116, 46, 55, 55);
  fill(#4E0D6F);
  stroke(#4E0D6F);
  ellipse(176, 46, 55, 55);
  fill(#55042B);
  stroke(#55042B);
  ellipse(236, 46, 55, 55);
  fill(#164D05);
  stroke(#164D05);
  ellipse(296, 46, 55, 55);
  fill(#4D3505);
  stroke(#4D3505);
  ellipse(356, 46, 55, 55);
  fill(#0D5A6C);
  stroke(#0D5A6C);
  ellipse(356, 46, 55, 55);
  fill(#6C650D);
  stroke(#6C650D);
  ellipse(416, 46, 55, 55);
  fill(#6A1564);
  stroke(#6A1564);
  ellipse(476, 46, 55, 55);
  fill(#6A2A15);
  stroke(#6A2A15);
  ellipse(536, 46, 55, 55);
  fill(#3C737C);
  stroke(#3C737C);
  ellipse(596, 46, 55, 55);
  fill(#7E1630);
  stroke(#7E1630);
  ellipse(656, 46, 55, 55);
  fill(#667129);
  stroke(#667129);
  ellipse(716, 46, 55, 55);
  fill(#05ECFF);
  stroke(#05ECFF);
  ellipse(776, 46, 55, 55);
  fill(#B305FF);
  stroke(#B305FF);
  ellipse(836, 46, 55, 55);
  fill(#05FFA1);
  stroke(#05FFA1);
  ellipse(896, 46, 55, 55);
  fill(#FEFF05);
  stroke(#FEFF05); 
  ellipse(956, 46, 55, 55);
  fill(#FF6403);
  stroke(#FF6403); 
  ellipse(1016, 46, 55, 55);
  fill(#FF03B8);
  stroke(#FF03B8); 
  ellipse(1076, 46, 55, 55);
  fill(#036DFF);
  stroke(#036DFF); 
  ellipse(1136, 46, 55, 55);
  fill(#03FF0C);
  stroke(#03FF0C); 
  ellipse(1196, 46, 55, 55);
  fill(#03F4FF);
  stroke(#03F4FF); 
  ellipse(1256, 46, 55, 55);
  //finish all of this
  
  fill (#FAEDED);
  rect(450, 600, 500,250);
}

void keyPressed ()
{
  //background(random (300),random (300),random(300));
  if (key == '1') 
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '2') 
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '3') 
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '4')  
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '5')
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '6') 
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '7')
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '8')
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '9')
  {
    col = color (random(300), random(300), random(300));
  }
  if (key == '0')
  {
    col = color (random(300), random(300), random(300));
  }

  if (key == 's')
  {
    bergenx= bergenx-20;
  }
  {
    if (key == 'd')
      bergenx=bergenx+20;
  }
}