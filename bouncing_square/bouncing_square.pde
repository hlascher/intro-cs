int x = 0;
int y = 0;
int z = 3;
int a = 1;

void setup() {
  size  (1000, 1000);
}

void draw() {
  background(100, 100, 100);
  square(x, y, 100);
  x = x + a;
  y = y + z;
  if (y == 900) {
    z = -2;
  }
  if (y == 0) {
    z = 3;
  }
  if(x == 900) {
    a = -1;
  }
  if (x == 0) {
    a = 2;
  }
}
