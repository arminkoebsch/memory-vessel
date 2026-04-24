
int h = 0;

void setup() {

  size(800, 800);
  background(255);
}


void draw() {
  noFill();
  strokeWeight(40);
  background(255);
  for (int y = -120; y < height+120; y+=60) {
    strokeWeight(40);
    stroke(0);
    arc(200, y+h, 150, 100, radians(180), radians(270));//down effect
    arc(200, y+20+h, 800, 100, radians(0), radians(90));
    stroke(255);
    arc(203, y+5+h, 160, 120, radians(180), radians(275));
    arc(200, y+15+h, 800, 100, radians(0), radians(90));
  }

  for (int y = -120; y < height+120; y+=60) {
    strokeWeight(5);
    stroke(0);
    arc(200, y-h, 150, 100, radians(270), radians(360));//up effect
    arc(200, y+20-h, 800, 100, radians(0), radians(90));
    stroke(255);
    //arc(203, y+5-h, 160, 120, radians(180), radians(275));
    //arc(200, y+15-h, 800, 100, radians(0), radians(90));
  }

  h++;
  if (h == 60) {
    h = 0;
  }
}
