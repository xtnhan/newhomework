

class Board {
  float w = 68;
  float h = 68;



  ArrayList<Piece> pieces = new ArrayList<Piece> ();
  ArrayList<Element> elements = new ArrayList<Element> ();

  Board () {

    for (int x = 0; x <= width; x += w) {
      for (int y = 0; y <= height; y +=h) {

        elements.add (new Element (x, y, w, h));
      }
    }
  }



  void draw() {

    for (Element e : elements) {
      e.draw();
    }

    for (Piece p : pieces) { //Loop variable
      p.draw();
      //println(pieces.size());
    }
  }


  boolean isClicked() {

    for (Element e : elements) {
      if (e.isMouseClicked()) {
        if (e.hasPiece()) {
          //Move a piece
          e.piece.isHolding = true;
        } else {
          //Add a piece

          b.pieces.add (new Piece (e.x + e.w/2, e.y + e.h/2, isPlayer1turn)); //put the piece in the center of the element

          e.piece = b.pieces.get(b.pieces.size()-1); //Get the last piece in the list
        }

        isPlayer1turn = !isPlayer1turn;


        return true;
      }
    }
    return false;
  }

  Element getElementMouse() {

    for (Element e : elements) {
      if (e.isMouseClicked()) {
        return e; //Return an element when isMouseClicked in Element class = true;
      }
    }

    return null;
  }


  //  void addPieces () {



  //    if (mousePressed) {

  //      pieces.add (new Piece (mouseX, mouseY, isPlayer1turn) ); //Gài true/false từ isCircle class Piece để add X hoặc O sau mỗi lần click chuột
  //      isPlayer1turn = !isPlayer1turn;
  //    }
  //  }

  //  boolean isClicked () {

  //    if (mouseX >= 0 && mouseX <= width/4 && mouseY >=0 && mouseY <= height/3) {

  //      pieces.add (new Piece (width/8, height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }

  //    if (mouseX >= width/4 && mouseX <= width/2 && mouseY <= height/3) {

  //      pieces.add (new Piece (3* width/8, height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }

  //    if (mouseX >= width/2 && mouseX <= 3*width/4 && mouseY >=0 && mouseY <= height/3) {

  //      pieces.add (new Piece (5* width/8, height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }    

  //    if (mouseX >= 3*width/4 && mouseY <= height/3) {

  //      pieces.add (new Piece (7* width/8, height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }    





  //    //Second row





  //    if (mouseX >= 0 && mouseX <= width/4 && mouseY >= height/3 && mouseY <= 2 * height/3) {

  //      pieces.add (new Piece (width/8, height/2, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }

  //    if (mouseX >= width/4 && mouseX <= width/2 && mouseY >= height/3 && mouseY <= 2 * height/3) {

  //      pieces.add (new Piece (3* width/8, height/2, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }

  //    if (mouseX >= width/2 && mouseX <= 3*width/4 && mouseY >= height/3 && mouseY <= 2 * height/3) {

  //      pieces.add (new Piece (5* width/8, height/2, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }    

  //    if (mouseX >= 3*width/4 && mouseY >= height/3 && mouseY <= 2 * height/3) {

  //      pieces.add (new Piece (7* width/8, height/2, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }    







  //    //Third row



  //    if (mouseX >= 0 && mouseX <= width/4 && mouseY >= 2 * height/3) {

  //      pieces.add (new Piece (width/8, 5*height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }

  //    if (mouseX >= width/4 && mouseX <= width/2 && mouseY >= 2 * height/3) {

  //      pieces.add (new Piece (3* width/8, 5*height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }

  //    if (mouseX >= width/2 && mouseX <= 3*width/4 && mouseY >= 2 * height/3) {

  //      pieces.add (new Piece (5* width/8, 5*height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }    

  //    if (mouseX >= 3*width/4 && mouseY >= 2 * height/3) {

  //      pieces.add (new Piece (7* width/8, 5*height/6, isPlayer1turn) );
  //      isPlayer1turn = !isPlayer1turn;

  //      return true;
  //    }    

  //    return false;
  //  }
}
