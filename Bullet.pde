class Bullet {
  float x;
  float y;
  float s;
  boolean isHeld;
  boolean isFired;
  float dy;
  Bullet (float xx, float yy) {
    x = xx;
    y = yy;
    s = 20;
    isHeld = false;
    isFired= false;
  }


  void draw () {
    y = y - dy;
    circle(x, y, s);
  }
  void update (Player p) {//Collect bullet

    if (dist (x, y, p.x, p.y) <= p.s/2) {

      x = p.x;
      y = p.y;
      isHeld = true;
    }

    if (y <=0) {
      p.reset(b);
    }
  }

  void shoot () {  
    dy = 10;
  }

  void reset (Player p) {
    p.reset(b);
  }
}
