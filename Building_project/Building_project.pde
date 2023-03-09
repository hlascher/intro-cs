float xCenter = 300;
float yBottom = 550;
float w = 100;
void setup () {
  background(47, 89, 221);
  size(1000, 1000);
  fill(#808080);
  strokeWeight(2);
  stroke(#808080);
  for (float row = 300; row <= 1000; row = row + 350) {
    for (float b = 100; b <= 1000; b = b + 100) {
      building(b, row, 100, random(200, 350));
    }
  }
}

void draw() {

  fill(#808080);
  stroke(#808080);
  //rect(0, 550, 600, 50);
  //stroke(255, 255, 0);

  fill(#AA4A44);
}

void building(
  float xCenter,
  float yBottom,
  float w, float h
  ) {


  stroke(255);
  rect(xCenter - w/2, yBottom - h, w, h);
  strokeWeight(4);
  stroke(0);

  //door

  rect(xCenter, yBottom - 50, w-75, 50);



  int numWindows = 6;
  float xLeft = xCenter - w/2;
  float p =1;

  push();
  rectMode(CENTER);
  while (p <= numWindows) {
    rect(xLeft + p*w/(numWindows + 1), yBottom -h/2, 25, 25);
    p=p+1;
  }

  pop();
}
