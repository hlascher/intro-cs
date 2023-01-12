// this code makes an island that appears and a house that apears in a rondom place on
// the island with clouds appearing on top
// the background color is also randomizing
// i got insperation from the lighthouse demo


int x;
int a;
int y;
float fix1;
float fix2;
boolean sunny;

void setup() {
  //randomizes the island location
    x = (int) random(350);
    //randomizes where the house is
           a = (int) random(125, 350);
           y = x + a;
           fix1= x + 400;
           fix2 = x + 150;

  size (1000, 700);
  //makes no sun apear
  sunny = false;
  
}
 void draw(){
   background(#63C5DA);
   //keeps the island from hanging over the right side
    if (y + 100> x + 400){
    fix1 = x + 450;
  }
  //keeps island from handing over left side
   if(y < x + 150){
     fix2 = x + 125;
   }
   //makes sunny true if fix 1 is in action
   if(fix1 == x + 450){
     sunny = true;
   }
   //makes sunny true if fix2 is in action
   if (fix2 == x + 125){
     sunny = true;
   }
   // if sunny if true it creates a sun
   if (sunny == true){
     fill(#FFE87C);
     circle(50, 50, 150);
   }
   
   fill(#877f7d);
   //this makes the island
  beginShape(); 
  vertex (x, 700);
  vertex( x + 600, 700);
  vertex(x + 453, 612);
  vertex(fix1, 589);
    vertex(fix2, 589);
  vertex (x + 62, 629);
  endShape();
  
  
  fill(#AA4A44);
  //this builds the house
  square(y, 489, 100);
 fill(177,156,134);
 triangle(y - 15, 494, y + 115, 494, y + 50, 414);
 fill(#FFFF00);
 beginShape();
 //door
 vertex(y + 42, 589);
 vertex(y + 58, 589);
 vertex(y + 58, 558);
 vertex(y + 42, 558);
 endShape();
 //window
 fill(255);
 square(y + 20, 517, 15);
 square(y + 65, 517, 15);
 
 fill(255);
 //cloud 1
  noStroke();
  ellipse(y - 275, 100, 50, 50);
  ellipse(y - 255, 90, 40, 40);
  ellipse(y - 245, 100, 50, 50);
  ellipse(y - 235, 90, 40, 40);
  ellipse(y - 215, 100, 60, 60);
  ellipse(y - 195, 90, 50, 50);
  ellipse(1 - 175, 100, 50, 50);
  //cloud2
   noStroke();
  ellipse(y - 75, 100, 50, 50);
  ellipse(y - 55, 90, 40, 40);
  ellipse(y - 45, 100, 50, 50);
  ellipse(y - 35, 90, 40, 40);
  ellipse(y - 15, 100, 60, 60);
  ellipse(y + 5, 90, 50, 50);
  ellipse(y + 25, 100, 50, 50);
  //cloud 3
   ellipse(y + 125, 100, 50, 50);
  ellipse(y + 145, 90, 40, 40);
  ellipse(y + 155, 100, 50, 50);
  ellipse(y + 165, 90, 40, 40);
  ellipse(y + 185, 100, 60, 60);
  ellipse(y + 205, 90, 50, 50);
  ellipse(y + 225, 100, 50, 50);
  //cloud 4
     noStroke();
   ellipse(y + 325, 100, 50, 50);
  ellipse(y + 345, 90, 40, 40);
  ellipse(y + 355, 100, 50, 50);
  ellipse(y + 365, 90, 40, 40);
  ellipse(y + 385, 100, 60, 60);
  ellipse(y + 405, 90, 50, 50);
  ellipse(y + 425, 100, 50, 50);
  
 


 
  
  fill(255);
 text("Mouse Coordinates: (" + mouseX + ", " + mouseY + ")", 10, 20);
}
 
