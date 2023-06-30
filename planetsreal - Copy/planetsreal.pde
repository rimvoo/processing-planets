//importing and setting up minim
import ddf.minim.*;

Minim minim;
AudioSample d1;
AudioOutput out;


//importing images
PImage BG;
PImage Sun;
PImage Sunfact;
PImage Mercury;
PImage Mercuryfact;
PImage Venus;
PImage Venusfact;
PImage Earth;
PImage Earthfact;
PImage Jupiter;
PImage Jupiterfact;
PImage Neptune;
PImage Neptunefact;
PImage Pluto;
PImage Plutofact;
PImage Saturn;
PImage Saturnfact;
PImage Uranus;
PImage Uranusfact;
PImage Mars;
PImage Marsfact;






//speed of rotations
float theta = 0;

void setup() {
  size(1000, 1000);

  // just setting up my images 
  // facts were created in gimp
  Uranus = loadImage("uranus.jpg");
  Uranusfact = loadImage("uranusfact.jpg");
  Saturn = loadImage("saturn.jpg");
  Saturnfact= loadImage("saturnfact.jpg");
  Pluto = loadImage("pluto.jpg");
  Plutofact = loadImage("plutofact.jpg");
  Mars = loadImage("mars.jpg");
  Marsfact = loadImage("marsfact.jpg");
  Jupiter = loadImage("jupiter.jpg");
  Jupiterfact = loadImage("jupiterfact.jpg");
  Neptune = loadImage("neptune.jpg");
  Neptunefact = loadImage("neptunefact.jpg");
  BG = loadImage("backgroundreal.jpg");
  Sun = loadImage("sun.jpg");
  Sunfact = loadImage("sunfact.jpg");
  Mercury = loadImage("mercury.jpg");
  Mercuryfact = loadImage("mercuryfact.jpg");
  Venus = loadImage("venus.jpg");
  Venusfact = loadImage("venusfact.jpg");
  Earth = loadImage("earth.jpg");
  Earthfact = loadImage("earthfact.jpg");
  //stroke is here bacuse the planets would leave a trail otherwise
  stroke(255);
  //getting planets suite playing
  minim = new Minim(this);
  out =minim.getLineOut();
  d1 = minim.loadSample("orchestra.wav");
  d1.trigger();
}
void draw() {

  background(0);
  //setting a background image
  image(BG, 0, 0);
  //prompting users
  println("Press 'W' to see the orbits!");
  println("Press 'Q' to learn about planets!");

  // i essentailly have 2 possible screens. if user clicks w q]

  if (key == 'w' || key == 'W')
  {
    // i got the general idea for how to make planets rotate on page 286 of this book but have heavily modified the code: https://b-ok.global/book/2716060/680df8
    //please note planets are not 100% to scale (the sun is made esepacially smaller than it is to make the program look more appealing)

    //sets sun to the middle of the screen
    translate(width/2, height/2);
    fill(255, 200, 50);
    ellipse(0, 0, 50, 50);

    //the planets will rotate around the sun
    //originally had moons orbitting aswell but screen was to clustered and made the program unapealling

    //this roatates my planets
    pushMatrix();
    //rotation speed
    rotate(theta*9.2);
    //how far away from sun
    translate(40, 0);
    //color
    fill(64, 64, 64);
    //size
    ellipse(0, 0, 10, 10);
    popMatrix();
    //same applies for the rest of the planets

    pushMatrix();
    rotate(theta*8.1);
    translate(80, 0);
    fill(179, 53, 0);
    ellipse(0, 0, 30, 30);
    popMatrix();

    pushMatrix();
    rotate(theta*7.3);
    translate(120, 0);
    fill(0, 0, 230);
    ellipse(0, 0, 30, 30);
    popMatrix();

    pushMatrix();
    rotate(theta*6.1);
    translate(160, 0);
    fill(200, 20, 30);
    ellipse(0, 0, 25, 25);
    popMatrix();

    pushMatrix();
    rotate(theta*5.1);
    translate(210, 0);
    fill(170, 108, 57);
    ellipse(0, 0, 60, 60);
    popMatrix();

    pushMatrix();
    rotate(theta*4.6);
    translate(280, 0);
    fill(160, 98, 47);
    ellipse(0, 0, 50, 50);
    popMatrix();

    pushMatrix();
    rotate(theta*3.5);
    translate(340, 0);
    fill(64, 64, 64);
    ellipse(0, 0, 30, 30);
    popMatrix();

    pushMatrix();
    rotate(theta*2.1);
    translate(380, 0);
    fill(75, 112, 221);
    ellipse(0, 0, 25, 25);
    popMatrix();

    pushMatrix();
    rotate(theta*1.23);
    translate(420, 0);
    fill(175, 128, 87);
    ellipse(0, 0, 10, 10);
    popMatrix();




//allows planets to actually have an orbit. would be stationary without this
    theta += 0.01;
  }


  //this here will allow users to explore planets and their facts when they click q

  if (key == 'q' || key == 'Q')
  {
    //redrew planets and alligned to make it user friendly

    translate(width/2, height/2);
    fill(255, 200, 50);
    ellipse(0, 0, 50, 50);




    fill(64, 64, 64);
    ellipse(40, 0, 10, 10);




    fill(179, 53, 0);
    ellipse(80, 0, 30, 30);




    fill(0, 0, 230);
    ellipse(120, 0, 30, 30);



    fill(200, 20, 30);
    ellipse(160, 0, 25, 25);


    fill(170, 108, 57);
    ellipse(210, 0, 60, 60);


    fill(160, 98, 47);
    ellipse(280, 0, 50, 50);


    fill(64, 64, 64);
    ellipse(340, 0, 30, 30);




    fill(75, 112, 221);
    ellipse(380, 0, 25, 25);



    fill(175, 128, 87);
    ellipse(420, 0, 10, 10);

    //if mouse hovers over planet then it will display fact and image of planets
    if ((mouseX <((width/2)+30)&& mouseX>((width/2)-30))&&(mouseY <((height/2)+30)&& mouseY >(height/2)-30))
    {

      image(Sun, 100, 100);
      image(Sunfact, -200, 100);
    }
    if ((mouseX <((width/2)+50)&& mouseX>((width/2)+31))&&(mouseY <((height/2)+20)&& mouseY >(height/2)-20))
    {
      image(Mercury, 100, 100);
      image(Mercuryfact, -200, 100);
    }
    if ((mouseX <((width/2)+100)&& mouseX>((width/2)+71))&&(mouseY <((height/2)+30)&& mouseY >(height/2)-30))
    {
      image(Venus, 100, 100);
      image(Venusfact, -200, 100);
    }
    if ((mouseX <((width/2)+140)&& mouseX>((width/2)+110))&&(mouseY <((height/2)+20)&& mouseY >(height/2)-20))
    {
      image(Earth, 100, 100);
      image(Earthfact, -200, 100);
    }
    if ((mouseX <((width/2)+170)&& mouseX>((width/2)+150))&&(mouseY <((height/2)+40)&& mouseY >(height/2)-40))
    {

      image(Mars, 100, 100);
      image(Marsfact,-200,100);
    }
    if ((mouseX <((width/2)+240)&& mouseX>((width/2)+180))&&(mouseY <((height/2)+30)&& mouseY >(height/2)-30))
    {
      image(Jupiter, 100, 100);
      image(Jupiterfact,-200,100);
    }
    if ((mouseX <((width/2)+310)&& mouseX>((width/2)+250))&&(mouseY <((height/2)+40)&& mouseY >(height/2)-40))
    {
      image(Saturn, 100, 100);
      image(Saturnfact,-200,100);
    }
    if ((mouseX <((width/2)+360)&& mouseX>((width/2)+320))&&(mouseY <((height/2)+30)&& mouseY >(height/2)-30))
    {
      image(Uranus, 100, 100);
      image(Uranusfact,-200,100);
    }
    if ((mouseX <((width/2)+400)&& mouseX>((width/2)+370))&&(mouseY <((height/2)+30)&& mouseY >(height/2)-30))
    {
      image(Neptune, 100, 100);
      image(Neptunefact,-200,100);
    }
    if ((mouseX <((width/2)+440)&& mouseX>((width/2)+410))&&(mouseY <((height/2)+30)&& mouseY >(height/2)-30))
    {
      image(Pluto, 100, 100);
      image(Plutofact,-200,100);
    }
  }
}
