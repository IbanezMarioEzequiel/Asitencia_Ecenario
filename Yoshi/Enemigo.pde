public class Enemigo{
  private PVector posicion;
  private PVector velocidad;
  private int dificultad;
  public PImage img;

 /*contructor de la clase*/
  public Enemigo(){ 
  }
  
  /*creacion de los set*/
  public void setPosicion(PVector pos){
    this.posicion=pos;
  }
  
  public void setVelocidad(PVector vel){
    this.velocidad=vel;
  }
  
  public void setDificultad(int di){
    this.dificultad=di;
  }
  
  /*creacion delos get*/
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public PVector getVelocidad(){
    return this.velocidad;
  }
  
  public int getDificultad(){
    return this.dificultad;
  }
  /*creacion de los metodos*/
  public void display(){
    img=loadImage("circulo.png");
    imageMode(CENTER);
    noTint();
    image(img,this.posicion.x,this.posicion.y,50,50); 
  }
  
  public void movimiento(){
    this.posicion.x+=this.velocidad.x;
    if(this.posicion.x<0 || this.posicion.x>width){
    this.velocidad.x*=-1;
    }
  }
  
  public void atakk(){
    if( frameCount % dificultad == 0 ){
      atk.add(new Ataque(new PVector(this.posicion.x,this.posicion.y),new PVector(0,random(10,5)),#11F0D0));
    }else{

    }
  }
}
