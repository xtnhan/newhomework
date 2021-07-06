

class Board {
  ArrayList<Piece> pieces = new ArrayList<Piece> ();

  Board () {
  }


  void draw() {
    for (Piece p : pieces) { //Loop variable
      p.draw();
      println(pieces.size());
    
  }
  
  }

  void addPieces () {
    if (mousePressed) {
      
      pieces.add (new Piece (mouseX, mouseY, isPlayer1turn) );
      isPlayer1turn = !isPlayer1turn;
   
    }
  }
}
