class Paddle2
{
  // attributes
  float xloc;
  float yloc;
  float halfLeng;
  //constructor
  Paddle2()
  {

    xloc=width/2+930;
    yloc=height/2;
    halfLeng=100;
  }
  // methods
  void display()
  {

    strokeWeight(80);
    stroke(0, 0, 255);
    line(xloc, yloc-halfLeng, xloc, yloc+halfLeng);
  }
 boolean collide(Ball b)
  {
    if (b.xloc +70>this.xloc &&
      b.yloc>this.yloc-halfLeng &&
      b.yloc<this.yloc+halfLeng)
    {score2++;
      return true;
    }
    else {
      return false;
    }
    }
    void move(Ball b)
  {
    if(b.xvel>0)
    yloc=mouseY;
  }
}