public class Ataque{
  public PVector posicionA;
  public PVector velocidadA;
  public color colorA;

 /*contructor de la clase*/
  public Ataque(PVector pos,PVector vel,color c){
    this.posicionA=pos;
    this.velocidadA=vel;
    this.colorA=c;
  }
  /*seccion metodos de la clase*/
  void display(){
    posicionA.y+=velocidadA.y;
    fill(colorA);
    circle(posicionA.x,posicionA.y,30);
  }
  
}
