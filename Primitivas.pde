/*
 * Comparación de primitivas
 * Autor: Bruno Faúndez Valenzuela
 * Licencia: GPL v3
 */

color c = color(255, 128, 30);
int t1, t2;
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
  
  println("Dibujo de rectas:");
  
  t1 = millis();
  drawRect(startX, startY, endX, endY);
  t2 = millis();
  println("Tiempo 1: " + (t2 - t1));
  
  t1 = millis();
  line(startX + offset, startY, endX + offset, endY);
  t2 = millis();
  println("Tiempo 2: " + (t2 - t1));
}

void draw(){
  
}

boolean sketchFullScreen(){
  return true;
}
