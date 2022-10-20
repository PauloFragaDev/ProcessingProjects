float x = 300;
float y = 300;
float angle = 90;
float dia = 20;

void setup () {
  size (700, 700);
  surface.setLocation(987, 70);
}

void draw() {
   background(#151515);
   
   translate(width/2, height/2);
   rotate(radians(14.3+angle/3));
   for (float a=0; a<360; a += 10) {
     pushMatrix();
     if (angle<360) rotate (radians(a)*cos(radians(angle)));
     else rotate(radians(a));
     stroke(255);
     strokeWeight(3);
     line(x*sin(radians(angle)), 0, 0, y-dia/2);
     
     noStroke();
     fill(255);
     ellipse(x*sin(radians(angle)), 0, dia/2, dia/2);
     stroke(255);
     noFill();
     ellipse(0,y,dia,dia);
     popMatrix();
   }
   angle++;
}

/*
void cubo (){
  // CUADRADO :
  
  line (150,250,350,250); //1
  line (150,250,150,450); //2
  line (150,450,350,450); //3
  line (350,250,350,450); //4
  
  // LINEAS 3D
  
  line (150,250,250,175); //5
  line (250,175,450,175); //6
  line (350,250,450,175); //7
  line (350,450,450,387.5); //8
  line (450,387.5,450,175); //9
  line (150,450,250,387.5); //10
  line (250,387.5,450,387.5); //11
  line (250,387.5,250,175); //12
}

void rombo(){
  //LINEAS PARA ROMBO
  
  line (300,418.75,200,312.5);
  line (200, 312.5, 300, 212.5);
  line (300,418.75,400,312.5);
  line (400,312.5,300,212.5);
  
  //--------------------------
  
  line (300,418.75,250,350);
  line (250,350,200,312.5);
  line (250,350,300,212.5);
  line (250,350,400,312.5);
  
  //--------------------------
  
  line (300,418.75,350,281.25);
  line (350,281.25,200,312.5);
  line (350,281.25,300,212.5);
  line (350,281.25,400,312.5);
}
*/
