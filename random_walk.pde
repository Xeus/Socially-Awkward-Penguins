/* 
 * Ben Turner
 * Nature of Code, NYU-ITP
 * Daniel Shiffman
 * Homework #1:  Random Walk
 * Social-Awkward Penguins avoiding each other!
 */

Mover[] movers = new Mover[4];

void setup() {
  size(800,600);
  smooth();
  
  for (int i=0;i < movers.length; i++) {
    movers[i] = new Mover();
  }

}

void draw() {
  background(255,10);
  rect(0,0,width,height);
  for (int i=0; i < movers.length; i++) {
    movers[i].update();
    movers[i].avoidOthers();
    movers[i].checkEdges();
    movers[i].display();
  }
}
