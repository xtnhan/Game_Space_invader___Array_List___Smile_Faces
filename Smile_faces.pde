class smileFace {
  float x;
  float y;
  float r;
  boolean smiling;
  boolean isKilled;
    float dx;
  float dy;
  //Constructor

  smileFace (float xx, float yy, float rr) {
    x = xx;
    y = yy;
    r = rr;
    smiling = false;
    isKilled = false;
  }


  void draw () {
    x = x + dx;
    y = y + dy;
    if (smiling && isKilled == false) {
      drawSmile();
    } else {
      drawFrown();
    }
  }

  void update () {
    if (dist(x, y, mouseX, mouseY) <= r) {//collision detection
      smiling = false;
    } else {
      smiling = true;
    }
  }
  void isKilled (Bullet b) {
    if (dist (x, y, b.x, b.y) <= r) {
      isKilled = true;
      //x = -100;
      dx = -(random (-8,8));
      dy = -(random(1,5));
      
      //b.reset(p);
    }
  }

  void drawSmile() {//Send this code to student to save time
    fill(246, 255, 0); 
    circle(x, y, r*2);

    // eyes 
    fill(255, 255, 255); 
    circle(x - r/2, y-r/3, 10);
    circle(x + r/2, y-r/3, 10);

    // mouth
    noFill();
    arc(x, y, r, r, 0, PI);
  }

  void drawFrown() {
    fill(246, 255, 0); 
    circle(x, y, r*2);

    // eyes 
    fill(255, 255, 255); 
    circle(x - r/2, y-r/3, 10);
    circle(x + r/2, y-r/3, 10);

    // mouth
    noFill();
    arc(x, y+r/2, r, r, PI, TWO_PI);
  }
}
