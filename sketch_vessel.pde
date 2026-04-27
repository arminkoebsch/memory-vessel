
int h = 0;
int fx = -100;
int t = 0;

void setup() {

  size(800, 800);
  background(255);
}


void draw() {


  background(255);
  noFill();
  strokeWeight(40);

  for (int y = -120; y < height+120; y+=60) {//rotate effect
    strokeWeight(40);
    stroke(#F683FF);
    arc(200, y+h, 150, 100, radians(180), radians(270));//down effect
    arc(200, y+20+h, 800, 100, radians(0), radians(90));
    stroke(255);
    arc(203, y+5+h, 160, 120, radians(180), radians(275));
    arc(200, y+15+h, 800, 100, radians(0), radians(90));
  }

  for (int y = -120; y < height+120; y+=60) {
    strokeWeight(5);
    stroke(#F683FF);
    arc(545, y-h, 150, 100, radians(270), radians(360));//up effect
    arc(545, y+20-h, 800, 100, radians(90), radians(180));
    stroke(255);
    arc(545, y+5-h, 155, 120, radians(270), radians(360));
    arc(545, y+15-h, 800, 100, radians(90), radians(180));
  }

  h++;
  if (h == 60) {
    h = 0;
  }

  fill(#F683FF);
  stroke(0);
  strokeWeight(7);
  rect(-100, -100, 241, 1000);
  rect(621, -100, 1000, 1000);

  pushMatrix();
  translate(fx, 300);
  Fork();
  popMatrix();
  if (fx <= 58) {
    fx++;
  }
  
  noFill();
  strokeWeight(8);
  ellipse(370, 145, 800, 300);
  
  
}



void Fork() {
  fill(#D3D3D3);
  strokeWeight(3);
  stroke(0);
  rect(-200, -20, 200, 40);
  rect(0, -40, 40, 80);
  rect(40, -6, 40, 12);
  rect(40, -40, 40, 12);
  rect(40, 28, 40, 12);
}
