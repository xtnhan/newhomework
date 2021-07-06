Board b = new Board ();



boolean isPlayer1turn = true;



void setup () {
  size(500, 500);
}

void draw() {
  background(255, 255, 255);
  b.draw();
}

void mousePressed () {
  if (mouseButton == LEFT) {

    b.addPieces();




}
  if (mouseButton == RIGHT) {
    for (Piece p : b.pieces) {

      p.isClicked();
    }
  }
}

void mouseReleased () {
  if (mouseButton == RIGHT) {
    for (Piece p : b.pieces) {//Run the loop scanning through the Piece class and run the code

      p.isHolding = false;  

      p.x = mouseX;
      p.y = mouseY;
    }
  }
}
