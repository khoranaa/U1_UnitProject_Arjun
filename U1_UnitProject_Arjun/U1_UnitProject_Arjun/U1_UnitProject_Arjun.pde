//U1_UnitProject_Arjun
//Famous Pointillism w/ Music
/*This is a code of art which randomizes famous paintings in pointillsim while playing 
famous music every time. All you just have to do is watch and enjoy.*/

import ddf.minim.*; //audio variables
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
int which[]; 
int x; //variables for all booleans
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
PImage img; //vairables for all images
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage[] images = {img, img2, img3, img4, img5, img6, img7}; //array for images
int smallPoint, largePoint; //changing size of points every time the mouse move left 
// to right
boolean fpm1 = false; //showing booleans
boolean fpm2 = false;
boolean fpm3 = false;
boolean fpm4 = false;
boolean fpm5 = false;
boolean fpm6 = false;
boolean fpm7 = false;
AudioPlayer songs[] = new AudioPlayer[7]; //audio for code (this line and the next one)
Minim minim;
int pointillize = 10; //helps pointillize the drawing

void setup()
{
  fullScreen();
  images[0] = loadImage("15CA.jpg"); //loading images
  images[1] = loadImage("16CA.jpg");
  images[2] = loadImage("20'sA.jpg");
  images[3] = loadImage("MorFreeA.jpg");
  images[4] = loadImage("NowA.png");
  images[5] = loadImage("NowA2.png");
  images[6] = loadImage("NowA3.jpg");
  imageMode(CENTER);
  noStroke();
  smallPoint = 5;
  largePoint = 50;
  minim = new Minim(this);
  songs[0] = minim.loadFile("15CM.mp3"); //loading songs
  songs[1] = minim.loadFile("16CM.mp3");
  songs[2] = minim.loadFile("20'sM.mp3");
  songs[3] = minim.loadFile("MorFreeM.mp3");
  songs[4] = minim.loadFile("NowM.mp3");
  songs[5] = minim.loadFile("NowM2.mp3");
  songs[6] = minim.loadFile("NowM3.mp3");
  smooth();
  background(0);
}

void draw()
{
  if(fpm1 == true) // pointillizing the pictures with each fpm
  {
   for(int i = 0; i < 100; i++) // for loop is used to make picture draw faster
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint); //placing 
    //what is going to happen in the pointillization
    int x = int(random(images[0].width)); //gives the random spots of where the ellipse
    //is going to draw within the pixels of the picture for both width and height
    int y = int(random(images[0].height));
    color making = images[0].get(x,y); //variable for making the colors by using the image
    fill(making,128);
    ellipse(x + width*0.25, y, pointillize, pointillize); //draws the ellipse
    songs[0].play(); //plays the song
   }
  }
  
  if(fpm2 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x2 = int(random(images[1].width));
    int y2 = int(random(images[1].height));
    color making2 = images[1].get(x2,y2);
    fill(making2, 128);
    ellipse(x2, y2, pointillize, pointillize); 
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
    color making3 = images[2].get(x3,y3);
    fill(making3, 128);
    ellipse(x3, y3, pointillize, pointillize); 
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
    color making4 = images[3].get(x4,y4);
    fill(making4, 128);
    ellipse(x4, y4, pointillize, pointillize); 
    songs[3].play();
   }
  }  
  
  if(fpm5 == true)
  {
   for(int i = 0; i < 100; i++)
   {
    float pointillize = map(mouseX, 0, width + 500, smallPoint, largePoint);
    int x5 = int(random(images[4].width));
    int y5 = int(random(images[4].height));
    color making5 = images[4].get(x5,y5);
    fill(making5, 128);
    ellipse(x5 - width/20, y5 + width/25, pointillize, pointillize); 
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
    color making6 = images[5].get(x6,y6);
    fill(making6, 128);
    ellipse(x6 + width*0.19, y6, pointillize, pointillize); 
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
    color making7 = images[6].get(x7,y7);
    fill(making7, 128);
    ellipse(x7, y7, pointillize, pointillize); 
    songs[6].play();
   }
  }  
}

void keyPressed()
{
if(keyPressed && key == '1') //boolean to show when keyPressed
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