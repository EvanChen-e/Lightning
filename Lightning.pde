int diameter = 10;
int diameter2 = 5;
int diawarmx = 1500;
int diawarmy = 200;
boolean reset = false;
boolean warmup = false;
int colorE = 256;
int ball = 0;
float r = 255;
boolean boom = false;

int startX = 300;
int startY = 100;
int endX = 300;
int endY = 100;

int startX2 = 300;
int startY2 = 100;
int endX2 = 300;
int endY2 = 100;

int dia1 = 0; 
int dia2 = 0;

void setup() {
  background(0,0,0);
  size(200,200);
}

void draw(){
 frameRate(60);
 strokeWeight(0);
 fill(0,0,0,5);
 rect(-10,-10,700,700);
 strokeWeight(15);
 
 if(endY2 >= 500 || endY >= 500){
 boom = true; 
 } else {
 boom = false;
 }
 if(boom == true){
   noFill();
   strokeWeight(3);
   stroke(#FFF41A);
   rect(-10,-10,700,700);
   
   
   ellipse(endX,endY,dia1,dia1);
   
   stroke(#A21AFF);
   ellipse(endX2,endY2,dia1,dia1);
    dia1+=4;
 }
 if(dia1 > 250){
   boom = false;
   dia1 = 0;
   }
 strokeWeight(20);
 if(endY <= 500){
  stroke((int)(Math.random()*256), 104, 240); 
  endX = startX + (int)(Math.random()*20)-9;
  endY = startY + (int)(Math.random()*10);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
 }
 if(endY2 <= 500){
  stroke(240, (int)(Math.random()*156)+100, 104); 
  endX2 = startX2 + (int)(Math.random()*20)-11;
  endY2 = startY2 + (int)(Math.random()*10);
  line(startX2, startY2, endX2, endY2);
  startX2 = endX2;
  startY2 = endY2;
 }
 
 if (reset == true){
   noFill();
   strokeWeight(1);
   stroke(256,colorE,colorE);
   rect(-10,-10,700,700);
   fill(0,0,0,15);
   ellipse(300,100,diameter,diameter2);
    diameter = diameter + 20;
    diameter2 = diameter2 + 15;
    colorE = colorE - diameter2;
 }
 if(diameter >= 1600){
     reset = false;
     diameter = 20;
     diameter2 = 5;
     colorE = 200;
  }
  
  fill(#90A58A);
  stroke(0,0,0);
  strokeWeight(1);
  rect(200,0,20,100);
  rect(380,0,20,100);
  noFill();
  while(ball < 100){
  stroke(r,0,0);
  ellipse((float)(Math.random()*30)+290,(float)(Math.random()*30)+97,ball,ball);
  ball++;
  r-=255/130.0;
}
  ball = 0;
  r = 250;

  
  for(int x = 0; x <= 500; x+=100){
    fill(#AA071F);
    triangle(x+10,500,x+50,450,x+90,500);
    fill(#8E7F5A);
    rect(x+10,500,80,100);
    fill(#676560);
    rect(x+20,520,20,20);
    rect(x+60,520,20,20);
    fill(#D3C5A0);
    rect(x+35,560,30,50);
  }
}

void mousePressed(){
 reset = true;
 warmup = true;
 startX = 300;
 startY = 100;
 endX = 300;
 endY = 100;
 startX2 = 300;
 startY2 = 100;
 endX2 = 300;
 endY2 = 100;
}

