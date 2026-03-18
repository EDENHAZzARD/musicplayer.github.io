class MusicPlayer {
  //
  //Global Variables
  //
  //Constructor & Multiple Constructors (different parameters)
  MusicPlayer() {
  }//End Constructor
  //
  MusicPlayer(int numberOfRectangles) {
    }//End Constructor
  //
  void draw() {
    ErrorCatch("Hello World");
  }//End Draw
  //
  //Functions or Behaivours
  void rect( float x, float y, float w, float h) {
    rect(x, y, w, h);
    //CAUTION HERE
  } //End RECT
  void divsArray() {
    //CONTINUE HERE
    //See Procedural Prototype
  } //End DIVs Array
  //
  //Getters
  //
  //Setters
  //
  //Output - Println
  //Mutliple ERROR statements based on parameters, like Contructors
  void ErrorCatch(String description) {
    println(description);
  }//End Hello World
  void ErrorCatch(String description, int variable) {
    println(description, variable);
  }//End Hello World
  //
}//End Music Player Class
