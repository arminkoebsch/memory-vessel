
int h = 0;
int fx = -100;
float t = 124.5;
float r = 124.5;
boolean dir = true;

void setup() {

  size(800, 800);//cylinder is 150 - 650
  background(255);
}


void draw() {


  background(255);
  noFill();
  strokeWeight(40);

  //for (int y = -120; y < height+120; y+=60) {//rotate effect//old spiral pattern
  //  strokeWeight(40);
  //  stroke(#F683FF);
  //  arc(200, y+h, 150, 100, radians(180), radians(270));//down effect
  //  arc(200, y+20+h, 800, 100, radians(0), radians(90));
  //  stroke(255);
  //  arc(203, y+5+h, 160, 120, radians(180), radians(275));
  //  arc(200, y+15+h, 800, 100, radians(0), radians(90));
  //}

  //for (int y = -120; y < height+120; y+=60) {
  //  strokeWeight(5);
  //  stroke(#F683FF);
  //  arc(545, y-h, 150, 100, radians(270), radians(360));//up effect
  //  arc(545, y+20-h, 800, 100, radians(90), radians(180));
  //  stroke(255);
  //  arc(545, y+5-h, 155, 120, radians(270), radians(360));
  //  arc(545, y+15-h, 800, 100, radians(90), radians(180));
  //}

  //for (int y = -180; y < height+180; y+=60) {//rotate effect
  //  strokeWeight(5);
  //  stroke(#F683FF);
  //  arc(400, y+h, 500, 300, radians(180), radians(270));//down effect
  //  arc(400, y+h, 500, 300, radians(0), radians(90));
  //  stroke(255);
  //  //arc(203, y+5+h, 160, 120, radians(180), radians(275));
  //  //arc(200, y+15+h, 800, 100, radians(0), radians(90));
  //}

  //for (int y = -180; y < height+180; y+=60) {
  //  strokeWeight(5);
  //  stroke(#F683FF);
  //  arc(400, y-h, 500, 300, radians(270), radians(360));//up effect
  //  arc(400, y-h, 500, 300, radians(90), radians(180));
  //  stroke(255);
  //  //arc(545, y+5-h, 155, 120, radians(270), radians(360));
  //  //arc(545, y+15-h, 800, 100, radians(90), radians(180));
  //}
  
  for (int y = -600; y < height+600; y+=60) {//rotate effect
    strokeWeight(5);
    stroke(#F683FF);
    arc(1050, y+h, 1800, 800, radians(180), radians(225));//down effect
    arc(-250, y-12+h, 1800, 800, radians(0), radians(45));
    stroke(255);
    //arc(203, y+5+h, 160, 120, radians(180), radians(275));
    //arc(200, y+15+h, 800, 100, radians(0), radians(90));
  }

  for (int y = -600; y < height+600; y+=60) {
    strokeWeight(5);
    stroke(#F683FF);
    arc(-250, y-h, 1800, 800, radians(315), radians(360));//up effect
    arc(1025, y-h, 1800, 800, radians(90), radians(135));
    stroke(255);
    //arc(545, y+5-h, 155, 120, radians(270), radians(360));
    //arc(545, y+15-h, 800, 100, radians(90), radians(180));
  }

  h++;
  if (h == 60) {
    h = 0;
  }

  fill(#F683FF);//side bars
  stroke(0);
  strokeWeight(7);
  rect(-100, -100, 245, 1000);
  rect(655, -100, 1000, 1000);

  pushMatrix();
  translate(fx, 300);
  Fork();
  popMatrix();
  if (fx <= 58 && dir == true) {
    fx++;
  } else if (t >= 52) {
    t = t - 1;
  }

  if (t <=52) {
    dir = false;
  }

  if (dir == false) {
    fx = fx - 1;
    r = r - 1;
  }

  noFill();
  strokeWeight(8);
  arc(370, 120, 800, 350, radians(t), radians(r));
  arc(370, 155, 800, 350, radians(t), radians(r));
  arc(370, 190, 800, 350, radians(t), radians(r));
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
