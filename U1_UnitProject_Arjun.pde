//Add Read me file (Description, Inspiration, Screenshots)

//U1_UnitProject_Arjun
//Famous Pointillism w/ Music

/*This is a code of art which randomizes famous paintings in pointillsim while playing 
famous music every time. All you just have to do is watch and enjoy.*/
int which[];
int x;
int y;
int x2;
int y2;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PImage[] images = {img, img2, img3, img4, img5, img6, img7};
int smallPoint, largePoint;

void setup()
{
  fullScreen();
  which = new int[7];
  x = (int)random(1,7);
  img = loadImage("15CA.jpeg");
  img2 = loadImage("16CA.jpg");
  img3 = loadImage("20'sA.jpg");
  img4 = loadImage("MorFreeA.jpg");
  img5 = loadImage("NowA.jpeg");
  img6 = loadImage("NowA2.jpg");
  img7 = loadImage("NowA3.jpg");
  imageMode(CENTER);
  noStroke();
  smallPoint = 5;
  largePoint = 50;
}

void draw()
{
  background(255);
  for(int i = 0; i < 100; i++)
  {
    float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
    int x = int(random(img.width));
    int y = int(random(img.height));
    int x2 = int(random(img2.width));
    int y2 = int(random(img2.height));
    int x3 = int(random(img3.width));
    int y3 = int(random(img3.height));
    int x4 = int(random(img4.width));
    int y4 = int(random(img4.height));
    int x5 = int(random(img5.width));
    int y5 = int(random(img5.height));
    int x6 = int(random(img6.width));
    int y6 = int(random(img6.height));
    int x7 = int(random(img7.width));
    int y7 = int(random(img7.height));
    color pix = img.get(x,y);
    color pix2 = img.get(x2,y2);
    color pix3 = img.get(x3,y3);
    color pix4 = img.get(x4,y4);
    color pix5 = img.get(x5,y5);
    color pix6 = img.get(x6,y6);
    color pix7 = img.get(x7,y7);
    fill(pix, 128);
    fill(pix2, 128);
    fill(pix3, 128);
    fill(pix4, 128);
    fill(pix5, 128);
    fill(pix6, 128);
    fill(pix7, 128);
    ellipse(img.width, img.height, pointillize, pointillize);
    ellipse(img2.width, img2.height, pointillize, pointillize);
    ellipse(img3.width, img3.height, pointillize, pointillize);
    ellipse(img4.width, img4.height, pointillize, pointillize);
    ellipse(img5.width, img5.height, pointillize, pointillize);
    ellipse(img6.width, img6.height, pointillize, pointillize);
    ellipse(img7.width, img7.height, pointillize, pointillize);
  }
}

//to do:
//- add points
//- add famous paintings
//- add music
//- take screenshots