void drawCircle(float centerX, float centerY, float radius){
  for(float i = 0; i < 360; i+=0.5){
    float x = centerX+radius*cos(radians(i));
    float y = centerY+radius*sin(radians(i));
    set((int) x,(int) y,(int) col);
  }
}
