//Harry Lascher 10/6/22
//this code will create a robot snowman who wants to destroy the world 
// he rolls around with his bottom ball like bb8 
//his buttons and hat and arms and nose are weopens
int up= 1;
int a = 5;
int bigger = 5;
int y = 1;

// this will create the body
void setup() {
size(600, 1000);
}
void draw() {
  background(100 + up, 2 + up, 140 + up);
  bigger = bigger + y;
  if (bigger == 220){
    y = -1;
  }
  if (bigger == 30){
  y = 1;
  }
 up = up - a;
 if (up == -969) {
   a = -10;
 }
  if (up == 21) {
    a = 5;
  }
    
  
  
  stroke(0, 0, 0);
  fill(255, 255, 255);
circle(300, 600 + up, 200);
circle(300, 450 + up, 150);
circle(300, 335 + up, 100);

//this will give it it's evil robot eyes
fill(200, 0, 0);
circle(275, 325 + up, 15);
fill(200, 0, 0);
circle(325, 325 + up, 15);

// this creates its intena unicorn horn
fill(0 , 0 , 0 );
triangle(275,300 + up, 232, 80 + up, 320, 300 + up);

//this creats the evil buttons of doom
circle(300, 490 + up, 25);
circle(300, 450 + up, 25);
circle(300, 410 + up, 25);

//this creates the carrot nose of evil
fill(255,140,0);
triangle(300, 340 + up, 300, 365 + up, 350, 355 + up);

//this creates a mouth
fill(150, 0, 0);
circle(300, 375 + up, 10);

// this creates the floor
fill( 150, 0 ,250);
rect(0, 705 ,1000 ,1000);

//this creates the arms
// he is kamehamehaing(dragon ball z)
fill(0, 0, 0);
line(350, 500 + up, 400, 400 + up);
line(250, 400 + up, 400, 400 + up);
fill(145, 224, 255);
circle(420, 405 + up, 70+ bigger);
stroke(150, 244, 255);
line(420, 405 + up, 500, 300 + up);
line(420, 405 + up, 420, 500 + up);
line(420, 405 + up, 420, 320 + up);
line(420, 405 + up, 500, 405 + up);
line(420, 405 + up, 500, 495 + up);

stroke(0, 0, 0);
fill( 255, 0, 0);
circle(411, 670 + up, 50);
circle(188, 670 + up, 50);
fill(72, 72, 72);
triangle( 395, 573 + up, 391, 657 + up, 454, 690 + up);
triangle(201, 569 + up, 216, 658 + up, 147, 675 + up);

println (mouseX);
println (mouseY);
}
