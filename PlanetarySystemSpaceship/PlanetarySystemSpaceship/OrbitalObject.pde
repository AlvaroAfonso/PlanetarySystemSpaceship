class OrbitalObject{
  
  private float x, y, z, radius, angleMove, rotAngle, rotAngleMove;
  private PShape shape;
  private float angle = random(360);
  private OrbitalObject sat = null;
  private String name;
  
  OrbitalObject(float x, float y, float z, float radius, PImage img, float angleMove, float rotAngleMove, String name){
    this.name = name;
    this.x = x;
    this.y = y;
    this.radius = radius;
    this.angleMove = angleMove;
    this.z = z;
    this.rotAngleMove = rotAngleMove;
    shape = createShape(SPHERE, radius);
    shape.setTexture(img);
    
    if(name == "Sun"){
      angle = 0;
    }
  }
  
  void move(){
    
    angle += angleMove;
    
    //aislo la órbita del mismo sistema de coordenadas de los demás
    pushMatrix();
    
    rotateY(radians(angle));
    
    //coloco planeta y hago que rote sobre si mismo
    pushMatrix();
    
    shape.setStroke(255);
    translate(x, y, z);
    
    pushMatrix();
        
    textAlign(CENTER);
    textSize(35);
    text(name, 0, radius + 50, 0);
    
    popMatrix();
    
    //satelite si lo hubiera
    if(sat != null){
      sat.move();
    }
    
    rotAngle += rotAngleMove;
    
    rotateY(radians(rotAngle));
    shape(shape);
    
    popMatrix();
    
    popMatrix();
  }
  
  void createSatellite(String file, float distance, float satRadius, float angleMove, float rotAngleMove, String name){
    
    sat = new OrbitalObject(distance, 0, 0, satRadius, loadImage(file), angleMove, rotAngleMove, name);
    
  }
}
