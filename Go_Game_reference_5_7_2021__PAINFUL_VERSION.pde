


Board b;

boolean moveMode = false;

boolean isPlayer1turn = true;



void setup () {
  size(500, 500);
  b = new Board ();
}

void draw() {
  background(255, 255, 255);
  b.draw();
}

void mousePressed () {

  if (moveMode) {

    Element e = b.getElementMouse(); //Local variable - Create an element when moveMode

    if (e.piece != null) { //Check if element has a piece
      e.piece.isHolding = true;
      e.piece = null;
    }
  } else {
    if (mouseButton == LEFT) {

      b.isClicked();
    }
    if (mouseButton == RIGHT) {
      for (Piece p : b.pieces) {

        p.isClicked();
      
      }
    }
  }
}

void mouseReleased () {
  if (mouseButton == RIGHT) {
    for (Piece p : b.pieces) {//Looping through a list of Piece objects

      p.isHolding = false;
    }
  }
}

void keyPressed( ) {

  if (key == 'm') {

    moveMode = !moveMode;
  }
}
