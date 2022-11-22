

int x = 50;
int y = 50;
int z = 3;
int a = 1;
int r = 255;
int g = 91;
int b = 165;

void setup() {
  size  (1000, 1000);
}

void draw() {
  background(r, g, b);
  circle(x, y, 100);
  x = x + a;
  y = y + z;
  if (y == 950) {
    z = -2;
    r = 0;
    g = 0;
    b = 0;
  }
  if (y == 50) {
    z = 3;
    r = 255;
    g = 91;
    b = 165;
  }
  if(x == 950) {
    a = -1;
    r = 0;
    g = 255;
    b = 0;
  }
  if (x == 50) {
    a = 2;
    r = 0;
    g = 0;
    b = 255;
  }
 
}
