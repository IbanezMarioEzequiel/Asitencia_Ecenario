public class Fondo{
  PVector posicionI=new PVector(width/2,height/2);
  PImage ecenario;
  
  public Fondo(){
  
  }
  public void display(){
    ecenario=loadImage("ecenario.jpg");
    imageMode(CENTER);
    tint(0, 45, 204, 255);
    image(ecenario,posicionI.x,posicionI.y,width,height);
  }
  
}
