
//Add Read me file (Description, Inspiration, Screenshots)

//U1_UnitProject_Arjun
//Famous Pointillism w/ Music

/*This is a code of art which randomizes famous paintings in pointillsim while playing 
famous music every time. All you just have to do is watch and enjoy.*/

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int which[];
int x;
int y;
int x2;
int y2;
int x3;
int y3;
int x4;
int y4;
int x5;
int y5;
int x6;
int y6;
int x7;
int y7;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage[] images = {img, img2, img3, img4, img5, img6, img7};
int smallPoint, largePoint;
boolean fpm1 = false;
boolean fpm2 = false;
boolean fpm3 = false;
boolean fpm4 = false;
boolean fpm5 = false;
boolean fpm6 = false;
boolean fpm7 = false;
AudioPlayer songs[] = new AudioPlayer[7];
Minim minim;

void setup()
{
  fullScreen();
  images[0] = loadImage("15CA.jpeg");
  images[1] = loadImage("16CA.jpg");
  images[2] = loadImage("20'sA.jpg");
  images[3] = loadImage("MorFreeA.jpg");
  images[4] = loadImage("NowA.jpeg");
  images[5] = loadImage("NowA2.jpg");
  images[6] = loadImage("NowA3.jpg");
  imageMode(CENTER);
  noStroke();
  smallPoint = 5;
  largePoint = 50;
  minim = new Minim(this);
  songs[0] = minim.loadFile("15CM.mp3");
  songs[1] = minim.loadFile("16CM.mp3");
  songs[2] = minim.loadFile("20'sM.mp3");
  songs[3] = minim.loadFile("MorFreeM.mp3");
  songs[4] = minim.loadFile("NowM.mp3");
  songs[5] = minim.loadFile("NowM2.mp3");
  songs[6] = minim.loadFile("NowM3.mp3");
}

void draw()
{
  background(255);
  if(fpm1 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x = int(random(images[0].width));
    int y = int(random(images[0].height));
    color pix = img.get(x,y);
    fill(pix, 128);
    ellipse(images[0].width, images[0].height, pointillize, pointillize); 
    songs[0].play();
   }
  }
  
  if(fpm2 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x2 = int(random(images[1].width));
    int y2 = int(random(images[1].height));
    color pix2 = img.get(x2,y2);
    fill(pix2, 128);
    ellipse(images[1].width, images[1].height, pointillize, pointillize); 
    songs[1].play();
   }
  }
  
  if(fpm3 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x3 = int(random(images[2].width));
    int y3 = int(random(images[2].height));
    color pix3 = img.get(x3,y3);
    fill(pix3, 128);
    ellipse(img3.width, img3.height, pointillize, pointillize); 
    songs[2].play();
   }
  }  
  
  if(fpm4 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x4 = int(random(images[3].width));
    int y4 = int(random(images[3].height));
    color pix4 = img.get(x4,y4);
    fill(pix4, 128);
    ellipse(img4.width, img4.height, pointillize, pointillize); 
    songs[3].play();
   }
  }  
  
  if(fpm5 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x5 = int(random(images[4].width));
    int y5 = int(random(images[4].height));
    color pix5 = img.get(x5,y5);
    fill(pix5, 128);
    ellipse(img5.width, img5.height, pointillize, pointillize); 
    songs[4].play();
   }
  }  
  
  if(fpm6 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x6 = int(random(images[5].width));
    int y6 = int(random(images[5].height));
    color pix6 = img.get(x6,y6);
    fill(pix6, 128);
    ellipse(img6.width, img6.height, pointillize, pointillize); 
    songs[5].play();
   }
  }  
  
  if(fpm7 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x7 = int(random(images[6].width));
    int y7 = int(random(images[6].height));
    color pix7 = img.get(x7,y7);
    fill(pix7, 128);
    ellipse(img7.width, img7.height, pointillize, pointillize); 
    songs[6].play();
   }
  }  
}

void keyPressed()
{
if(keyPressed && key == '1')
{
  fpm1 = true;
}
if(keyPressed && key == '2')
{
  fpm2 = true;
}
if(keyPressed && key == '3')
{
  fpm3 = true;
}
if(keyPressed && key == '4')
{
  fpm4 = true;
}
if(keyPressed && key == '5')
{
  fpm5 = true;
}
if(keyPressed && key == '6')
{
  fpm6 = true;
}
if(keyPressed && key == '7')
{
  fpm7 = true;
}
}


//to do:
//- add points
//- add famous paintings
//- add music
//- take screenshots