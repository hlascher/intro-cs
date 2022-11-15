int x = 20;
int y = 20;
int dy = 5;
int dx = 0;

void setup(){
  size (500, 500);
}

void draw() {
  background(20, 14, 200);
  circle(x, y, 20);
  y = y + dy; // down
  x = x + dx;
  //if het bttom left move right
  if (y == 480 && x == 20) {
    println ("x equals " + x);
    dx = 5;
    dy = 0;
    
  }
  // hit bottom right, move up
  if (x == 480 && y == 480){
    dy = -5;
    dx = 0;
  }
  
  if (x == 480 && y == 20){
    dy = 0;
    dx = -5;
  }
  if (x == 20 && y == 20) {
    dx = 0;
    dy = 5;
  }
  
}
