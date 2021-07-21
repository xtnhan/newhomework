class Element {
  float x;
  float y;
  float w;
  float h;

  Piece piece;

  Element (float xx, float yy, float ww, float hh) {

    x = xx;
    y = yy;
    w = ww;
    h = hh;
    piece = null;
  }


  void draw () {
    fill(255, 255, 255);
    rect(x, y, w, h);
  }

  boolean isMouseClicked () {


    if (mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h && piece == null) {

      b.pieces.add (new Piece (x + w/2, y + h/2, isPlayer1turn)); //put the piece in the center of the element

      piece = b.pieces.get(b.pieces.size()-1); //Get the last piece in the list

      return true;
    }           
    return false;
  }

  boolean hasPiece () {

    if (piece != null) {
      return true; //Don't have a piece
    }
    
    
    
    return false;
  
}
}
