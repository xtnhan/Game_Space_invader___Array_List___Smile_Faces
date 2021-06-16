class Player {
  float x;
  float y;
  float s;


  Bullet b;
  Player (float xx, float yy, float ss) {

    x = xx;
    y = yy;
    s = ss;
    b = null;
   
  }


  void draw () {

    circle (x, y, s); 


    if (b != null) {
      b.draw();
    }
  }


  void shoot (Bullet b) {
    b.isHeld = false;
    b.isFired = true;
    b.shoot();
    b.y = y - s/2;
  }

  void update () {
  }

  void moveLeft() { 
    x = x - 10;
  }

  void moveRight() { 
    x = x + 10;
  }
  
  void reset (Bullet b) {
    b.dy = 0;
    b.x = x;
    b.y = y;
    b.isHeld = true;
    b.isFired= false;
  }
}
