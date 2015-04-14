/*
 * Comparación de primitivas
 * Autor: Bruno Faúndez Valenzuela
 * Licencia: GPL v3
 */

color col = color(255, 128, 30);
int t1, t2, dt;
int startX, startY;
int endX, endY;
int offset;

void setup(){
  size(displayWidth, displayHeight);
  sketchFullScreen();
  background(255);
  startX = 100;
  startY = 50;
  endX = width-100;
  endY = height-100;
  offset = 40;
  
  stroke(col);
  noFill();
  
  float sdtRect1 = 0;
  float sdtRect2 = 0;
  float sdtCirc1 = 0;
  float sdtCirc2 = 0;
  
  for(int i = 0; i < 1000; i++){
    //Rectas
    t1 = millis();
    drawRect(startX, startY, endX, endY);
    t2 = millis();
    dt = t2 - t1;
    sdtRect1 += dt;
    
    t1 = millis();
    line(startX + offset, startY, endX + offset, endY);
    t2 = millis();
    dt = t2 - t1;
    sdtRect2 += dt;
    
    //Circunferencias  
    t1 = millis();
    drawCircle(width/2, height/2, 100);
    t2 = millis();
    dt = t2 - t1;
    sdtCirc1 += dt;
    
    t1 = millis();
    ellipse(width/2+200, height/2, 200, 200);
    t2 = millis();
    dt = t2 - t1;
    sdtCirc2 += dt;   
  }
  println("Recta 1 (Bresenham): " + sdtRect1/1000);
  println("Recta 2 (line): " + sdtRect2/1000);
    
  println("Circunferencia 1 (iterativo): " + sdtCirc1/1000);
  println("Circunferencia 2 (ellipse): " + sdtCirc2/1000);
}

void draw(){
  
}

boolean sketchFullScreen(){
  return true;
}
