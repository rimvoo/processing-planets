# processing-planets
My first project done in processing during my first year of Computer Science.  

What does my project do?
My program shows users the orbits of the planet. I made sure to make each planet go
slower as it moved further away from the sun as it is like this in real life.
I also allowed users to pause the rotation and align the planets where I showed them HD
images of the planets and also showed a fun fact for each planet they hovered over
I also had Holst’s planet suite playing regardless to whether you were looking at orbits or
the facts.
How does my project work?
My project makes use of the minim library. I set it up so Holst’s suite would be playing the
entire time by putting it in void setup(). I also set up my images so they would only show if I
hovered over a specific planet. I essentially had 2 screens. If a user pressed W they would
see the orbits of the planets. I learned via a book I was reading that in order for my to be
able to make planets rotate I needed to use pushMatrix() , popMatrix() and rotate().
essentially with these I was able to make it so planets did not repeat their drawing. If a user
pressed Q they would be shown the planets aligned and they can hover over the planets
and a fact and image of the planet would be shown. I did this be calculating the coordinates
to the top, bottom, left and right of the planet and making it so if mouseX and MouseY
where within those coordinates an image would show displaying facts and the planet. I did
this for all the planets. 
