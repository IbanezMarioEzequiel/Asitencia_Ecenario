public class Jugador{
  private PVector posicionJ;
  private PVector velocidad;
  public PImage right;
  public PImage left;
  public PImage sentado;
  
  public Jugador(){

  }
  /*creacion de los set y get */
  public void setPosicionJ(PVector pos){
    this.posicionJ=pos;
  }
  public void setVelocidadJ(PVector vel){
    this.velocidad=vel;
  }
  
  public PVector getPosicionJ(){
    return this.posicionJ;
  }
  public PVector getVelocidadJ(){
    return this.velocidad;
  }
 /*metodos de la clases */
  public void display(){
    right=loadImage("xdd.png");
    left=loadImage("xddd.png");
    sentado=loadImage("sentado.png");
    }
  public void movimiento(){
    switch(key){
      case 'a':
      case 'A':
        this.posicionJ.x-=this.velocidad.x;
        imageMode(CENTER);
        noTint();
        image(left,this.posicionJ.x,this.posicionJ.y,50,69);
      break;
      case 'd':
      case 'D':
        this.posicionJ.x+=this.velocidad.x;
        imageMode(CENTER);
        noTint();
        image(right,this.posicionJ.x,this.posicionJ.y,50,69);
        break;
      case 's':
      case 'S':
        imageMode(CENTER);
        noTint();
        image(sentado,this.posicionJ.x,this.posicionJ.y,50,69);
        break;
      default:
        imageMode(CENTER);
        noTint();
        image(right,this.posicionJ.x,this.posicionJ.y,50,69);
     }
   }
}
