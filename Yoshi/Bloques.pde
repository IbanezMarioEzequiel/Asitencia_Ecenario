public class Bloques{
  public PVector posicionB;
  public int ancho;
  public int alto;
  public color colorB;
  
  public Bloques(PVector pos,int ancho,int alto,color cb){
    this.posicionB=pos;
    this.ancho=ancho;
    this.alto=alto;
    this.colorB=cb;
  }
  
  public void display(){
    fill(colorB);
    for(float x=posicionB.x; x<width; x+=(ancho+posicionB.x)){
      for(float y=posicionB.y; y<height; y+=alto){
        rect(x,y,ancho,alto);
      }
    }  
  }
}
