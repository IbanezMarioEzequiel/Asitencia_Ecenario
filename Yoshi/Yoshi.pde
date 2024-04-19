ArrayList<Ataque>atk;
Enemigo pelota;
Bloques piso;
Jugador player1;
Fondo esenario;
void setup(){
  size(400,500);
  pelota=new Enemigo();
  pelota.setPosicion(new PVector(width/2,40));
  pelota.setVelocidad(new PVector(10,0));
  pelota.setDificultad(10);
  piso=new Bloques(new PVector(0,height-50),60,30,#8E4204);
  player1=new Jugador();
  player1.setPosicionJ(new PVector(width/2,height-80));
  player1.setVelocidadJ(new PVector(10,0));
  esenario= new Fondo();
  atk=new ArrayList<Ataque>();
}
void draw(){
  background(0);
  esenario.display();
  pelota.movimiento();
  pelota.atakk();
  pelota.display();
  piso.display();  
 for(int i=atk.size()-1;i>0;i--){
    Ataque atq=atk.get(i);
    if(atq.posicionA.y<0 || atq.posicionA.y>height){
      atk.remove(i);
    }
    atq.display();
  }
    player1.display();
    player1.movimiento();   
}
void keyPressed(){

}
void mousePressed(){
  atk.add(new Ataque(new PVector(player1.getPosicionJ().x,player1.getPosicionJ().y),new PVector(0,-10),#18F016));
}
