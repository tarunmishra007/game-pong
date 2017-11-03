class Ball {
  float xloc;
  float yloc;
  float xvel;
  float yvel;
  float accel;
  Ball() {
    xloc=width/2-100;
    yloc=height/2;
    xvel=5;
    yvel=3;
    accel=1.0007;
  }
  void display()
  {
    strokeWeight(0);
    fill(255, 0, 0);
    ellipse(xloc, yloc, 80, 80);
  }
  boolean move(Paddle1 p1, Paddle2 p2)
  { xvel*=accel;
    xloc=xloc+xvel;
    if (p1.collide(this))
    { 
    
      xvel*=-1;
    }else if(p2.collide(this))
    {
    xvel*=-1;
    }
    else if (xloc<40) {
      return false;
    }
    else if(xloc+40>=width)
    return false;
    yloc=yloc+yvel;
    if (yloc+40>height||yloc-40<0)
    {
      yvel*=-1;
    }return true;
  }
}