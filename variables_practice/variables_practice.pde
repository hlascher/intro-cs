int harry = 50;
int teddy = 800;

void setup() {
  size (600, 1000);
}

void draw() {
  background(100, 100, 100);
  circle(harry, 200, 100);
  harry = harry + 1;
  rect(300, teddy, 100, 100);
  teddy = teddy - 1;
}
