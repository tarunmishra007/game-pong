Ball b;
Paddle1 p1;
Paddle2 p2;
int score1;
int score2;
boolean playon;
void setup()
{
  size(1900, 990);
  background(255);

  b=new Ball();
  p1=new Paddle1();
  p2=new Paddle2();
  playon=true;
  score1=0;
  score2=0;
}
void draw()
{

  background(0, 255, 20);
  textSize(40);
  text("PLAYER 1", 80, 60);
  text("PLAYER 2", width-300, 60);
  if (playon)
  {
    if (b.move(p1, p2))
    { 
      strokeWeight(10);
      stroke(0);
      line(width/2, 0, width/2, height);
      fill(0, 255, 10);
      rect(1600, 200, 400, 600);
      rect(-10, 200, 400, 600);
      b.display();
      p1.display();
      p1.move(b); 

      p2.display();
      p2.move(b);
    } else { 
      playon=false;
    }
  } else
  { 

    textSize(32);
    fill(0);
    text("GAME OVER!", width/2, height/2);

    if (b.xloc-50<=0)
    {
      textSize(60);
      text("PLAYER-2 w0n", width/2-100, height/2+60); text("DEVELOPED BY TEAM S.V.R.T", width/2-200, height/2+120);
    
    } else if (b.xloc+50>=width)
    {
      textSize(60);
      text("PLAYER-1 WON", width/2-159, height/2+60);
      text("DEVELOPED BY TEAM S.V.R.T", width/2-200, height/2+120);
    }
  }
}