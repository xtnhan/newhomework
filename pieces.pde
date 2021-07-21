class Piece {
  float x;
  float y;
  float r;
  boolean isCircle;



  boolean isHolding;
  
  Piece (float xx, float yy, boolean isCirclee) {
    x =xx;
    y = yy;
    r = 33;
    isCircle = isCirclee;
    isHolding = false;
  }


  void draw () {
    if (isCircle) {//Player 1 turn => draw Circle
      fill(255, 255, 0);

      if (isHolding) { //If piece is being held, draw circle at mouse's position

        circle(x, y, r*2);

        update();

        println("Player 1 - holding");
      } else {


        circle (x, y, r*2);
      }
    } else { //Player 2 turn => draw X


      if (isHolding) { 
        line (x - 25, y - 25, x + 25, y + 25);
        line (x + 25, y - 25, x - 25, y + 25);

        println("Player 2 - holding");
        update();
      } else {
        line (x - 25, y - 25, x + 25, y + 25);
        line (x + 25, y - 25, x - 25, y + 25);
      }
    }
  }


  boolean isClicked () {

    if (dist (x, y, mouseX, mouseY) <= r) {
      isHolding = true;
    }
    return true;
  }


  void update() {
    x = mouseX;
    y = mouseY;
  }
}
