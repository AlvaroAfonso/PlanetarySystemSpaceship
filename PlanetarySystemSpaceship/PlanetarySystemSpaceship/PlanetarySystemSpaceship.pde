import gifAnimation.*;

OrbitalObject sun, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, moon;
PImage sunImg, mercuryImg, venusImg, earthImg, marsImg, jupiterImg, saturnImg, uranusImg, neptuneImg, plutoImg, backImg, moonImg;

int angleMove, angle, moveZ = 0;

PShape spaceship;

boolean firstPerson = true;

int navX, navY, posX, posY, posZ, posXMove, posYMove, posZMove = 0;
int navZ = 0;

int navXMove, navYMove, navZMove = 0;

int z = -1000;

//GifMaker gifExport;


void setup(){
  size(1280,800, P3D);
  
  //gifExport = new GifMaker(this, "export.gif");
  //gifExport.setRepeat(0);
  
  backImg = loadImage("universoFondo.jpg");
  
  background(backImg);
  sunImg = loadImage("solImg.jpg");
  sun = new OrbitalObject(0, 0, 0, 200, sunImg, 0, 0.5, "Sun");
  
  mercuryImg = loadImage("mercurioImg.jpg");
  mercury = new OrbitalObject(300, 0, 0, 30, mercuryImg, 3, 1, "Mercury");
  
  venusImg = loadImage("venusImg.jpg");
  venus = new OrbitalObject(448, 0, 0, 55, venusImg, 2.5, 1, "Venus");
  
  earthImg = loadImage("tierraImg.jpg");
  earth = new OrbitalObject(653, 0, 0, 55, earthImg, 1, 1, "Earth");
  earth.createSatellite("lunaImg.jpg", 100, 25, -2, 4, "Moon");
  
  marsImg = loadImage("marteImg.jpg");
  mars = new OrbitalObject(830, 0, 0, 40, marsImg, 0.7, 1, "Mars");
  
  jupiterImg = loadImage("jupiterImg.jpg");
  jupiter = new OrbitalObject(1030, 0, 0, 100, jupiterImg, 0.5, 1, "Jupiter");
  
  spaceship = loadShape("FA59AMako.obj");

}

void draw(){
  
  navX += navXMove;
  navY += navYMove;
  navZ += navZMove;
  
  posX += posXMove;
  posY += posYMove;
  posZ += posZMove;
  
  camera(width/2 + navX, height/2 - navY, (height/2) / tan(PI*30 / 180) - navZ, width/2 - posX, height/2 - posY, z + posZ, 0, 1, 0);

  background(backImg);
    
  textAlign(LEFT);
  textSize(60);
  text("- Press ESC to exit", -900, -500, -1000);
  text("- Use arrows to move the position of the camera", -900, -430, -1000);
  text("- Use ASDW to move the position of the focus",-900, -360, -1000);
  
  z += moveZ;
  
  translate(width/2, height/2, z);
  
  angle += angleMove;
  
  rotateX(radians(angle));
  
  sun.move();
  mercury.move();
  earth.move();
  mars.move();
  venus.move();
  jupiter.move();
  
  //gifExport.addFrame();
}

void keyPressed(){
   if(keyCode == UP){
     navZMove = 10;
     posZMove = -10;
   }
   
   if(keyCode == DOWN){
     navZMove = -10;
     posZMove = 10;
   }
   
   if(keyCode == LEFT){
     navXMove = -10;
   }
   
   if(keyCode == RIGHT){
     navXMove = 10;
   }
   
   if(key == 'a' || key == 'A'){
     posXMove = 10;
   }
   
   if(key == 'w' || key == 'W'){
     posYMove = 10;
   }
   
   if(key == 's' || key == 'S'){
     posYMove = -10;
   }
   
   if(key == 'd' || key == 'D'){
     posXMove = -10;
   }
}

void keyReleased(){
   if(keyCode == UP || keyCode == DOWN){
     navZMove = 0;
     posZMove = 0;
   }
   
   if(keyCode == RIGHT || keyCode == LEFT){
     navXMove = 0;
   }
   
   if(key == 'a' || key == 'd' || key == 'A' || key == 'D'){
     posXMove = 0;
   }
   
   if(key == 'w' || key == 's' || key == 'W' || key == 'S'){
     posYMove = 0;
   }
   
   
}

void mousePressed() {
    //gifExport.finish();          // write file
}
