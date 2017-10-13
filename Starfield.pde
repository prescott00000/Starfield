Particle[] bob;
void setup()
{
  size (600, 600);
  bob =  new Particle [50];

  for (int i=0; i<bob.length; i++)
  {
    bob [i]= new NormalParticle ();
    bob [5]= new OddballParticle();
    bob [6]= new JumboParticle ();
  }
}
void draw()
{
  background (0);
  for (int i=0; i<bob.length; i++)
  {
    bob [i]. Show();
    bob [i]. Move();
  }
}
class NormalParticle implements Particle
{ 
  double myX, myY, mySpeed, myAngle;
  NormalParticle ()
  {
    myX= 300;
    myY= 300;
    mySpeed= 8.25;
    myAngle= (double)(Math.random()*6.28)+1;
  }


  public void Move()
  {
    myX= myX+Math.cos(myAngle)*mySpeed; 
    myY= myY+ Math.sin(myAngle)*mySpeed;
   if (myX>600)
     myX= 300;
     
     if (myX<0)
       myX=300;
       
       if (myY>600)
       myY=300;
       if (myY<0)
       myY=300;
  }




  public void Show()
  {
    fill (255);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}

interface Particle
{
  public void Move();
  public void Show ();
}
class OddballParticle  implements Particle//uses an interface
{ 
  double myX, myY;
  OddballParticle ()
  {
    myX= 300;
    myY= 300;
  }


  public void Move()
  {
    myX= myX+(int)((Math.random ()*21)-10); 
    myY= myY+(int)((Math.random ()*21)-10);
    
      
  }




  public void Show()
  {
    fill (255,0,0);
    rect ((float)myX, (float)myY, 10, 10);
  }
}
class JumboParticle extends NormalParticle
{
  public void Show()
  {
    fill (0,255,0);
    ellipse((float)myX, (float)myY, 50, 50);
  }
}