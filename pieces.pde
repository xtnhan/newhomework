class Piece {
  float x;
  float y;
  float r;
  boolean isCircle;



  boolean isHolding;
  Piece (float xx, float yy, boolean isCirclee) {
    x =xx;
    y = yy;
    r = 34;
    isCircle = isCirclee;
    isHolding = false;
  }


  void draw () {
    if (isCircle) {
      fill(255, 255, 0);

      if (isHolding) { //If piece is being held, draw circle at mouse's position

        circle(mouseX, mouseY, r*2);
      } else {
        circle (x, y, r*2);
      }
    } else {


      if (isHolding) { 
        line (mouseX - 25, mouseY - 25, mouseX + 25, mouseY + 25);
        line (mouseX + 25, mouseY - 25, mouseX - 25, mouseY + 25);
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
}
