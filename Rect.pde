void drawRect(int x1, int y1, int x2, int y2){
  int x = x1;
  int y = y1;
  int d = 0;
  int hx = x2-x1;
  int hy = y2-y1;
  int c;
  int m;
  int xInc = 1;
  int yInc = 1;
  if(hx < 0){
    xInc = -1;
    hx = -hx;
  }
  if(hy < 0){
    yInc = -1;
    hy = -hy;
  }
  if(hy <= hx){
    c = 2 * hx;
    m = 2 * hy;
    while(true){
      set(x, y, c);
      if(x == x2){
        break;
      }
      x += xInc;
      d += m;
      if(d > hx){
        y += yInc;
        d -= c;
      }
    }
  }else{
    c = 2 * hy;
    m = 2 * hx;
    while(true){
      set(x, y, c);
      if(y == y2){
        break;
      }
      y += yInc;
      d += m;
      if(d > hy){
        x += xInc;
        d -= c;
      }
    }
  }
}
