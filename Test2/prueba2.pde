float x = 400;
float y = 400;
float angle;
float dia = 20;

void setup() {
  size (960,1080);
  surface.setLocation(957, 0);
}

void draw() {
  background (#eeeeee);
  
  mouseX = constrain(mouseX, 20, width);
  dia = lerp(dia, mouseX, 0.08);
  
  translate(width/2, height/2);
  rotate(radians(angle/2));
  for (float a=0; a<360; a+=dia/2){
    pushMatrix();
    rotate(radians(a));
    strokeWeight(3);
    line(0, y*sin(radians(a+angle)), x-dia/2,0);
    line(width/2, y*sin(radians(a+angle)), x+dia/2, 0);
    noStroke();
    fill(0);
    ellipse(0, y*sin(radians(a+angle)), dia/2, dia/2);
    
    stroke(0);
    if(y<=y*sin(radians(a+angle))+dia/3) fill(0);
    else noFill();
    ellipse(0, y, dia, dia);
    popMatrix();
  }
  angle++;
  /*
  float t;
  float CELL_SIZE = 40;
  t += 0.01;
  background (0);
  stroke (255);
  for (float x = CELL_SIZE / 2; x < width; x += CELL_SIZE){
    for (float y = CELL_SIZE / 2; y < height; y +=  CELL_SIZE) {
      PVector p = new PVector(x, y);
      for (int i = 0; i < 100; i++){
        float oldX = p.x;
        float oldY = p.y;
        float angle = noise(p.x / 100.0, p.y / 100.0, t) * PI * 2;
        float vx = cos(angle) * 10;
        float vy = sin(angle) * 10;
        p.x += vx;
        p.y += vy;
    
        line (oldX, oldY, p.x, p.y); 
      }
    }
  }
  */
}
