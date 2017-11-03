class Paddle1
{
  // attributes
  float xloc;
  float yloc;
  float halfLeng;
  //constructor
  Paddle1()
  {

    xloc=0;
    yloc=height/2;
    halfLeng=100;
  }
  // methods
  void display()
  {

    strokeWeight(100);
    stroke(0, 0, 255);
    line(xloc, yloc-halfLeng, xloc, yloc+halfLeng);
  }
boolean collide(Ball b)
  {
    if (b.xloc -75< this.xloc &&
      b.yloc>this.yloc-halfLeng &&
      b.yloc<this.yloc+halfLeng)
    { score1++;
      return true;
    }
    else {
      return false;
    }
  }
  void move(Ball b)
  {
    if(b.xvel<0)
    
    yloc=mouseY;
  }
}