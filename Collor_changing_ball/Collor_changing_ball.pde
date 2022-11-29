int x = 30;
int y = 30;
int dx = 1;
int dy = 1;
int r = 255;
int g = 0;
int b = 0;
void setup() {
  size(600, 600);
}

void draw() {
  //a background
  background(100, 100, 100);
  // a circle
  circle( x, y, 30);
  //color
  fill(r, g ,b);
  x = x + dx;
  if( x == 585){
    dx = -2;
    r = 255;
    g = 255;
    b = 255;
  }
  if (x == 15){
    dx = 2;
    r = 255;
    g = 0;
    b = 0;
  }
  y = y + dy;
  if( y == 585){
    dy = -3;
    r = 0;
    g = 0;
    b = 255;
  }
  if (y == 15){
    dy = 2;
    r = 0;
    g = 255;
    b = 0;
  }
}
