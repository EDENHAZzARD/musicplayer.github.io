class MusicPlayer {
  //
  //Global Variables
  float[] divs;
  //
  //Constructor & Multiple Constructors (different parameters)
  MusicPlayer() {
  }//End Constructor
  //
  MusicPlayer(int numberOfRectangles) {
    this.divs = new float[numberOfRectangles*4];
  }//End Constructor
  //
  void draw() {
    errorStatment("Hello World");
  }//End Draw
  //
  //Functions or Behaivours
  void rect( float x, float y, float w, float h) {
    rect(x, y, w, h);
  } //End RECT
  void divsArray() {
    //CONTINUE HERE
    //Note: develop formulaic lines through copy & paste
    //End with FOR( int i=0; i<divs.length; i++){}
    divs[0] = ;
  } //End DIVs Array
  //
  //Getters
  //
  //Setters
  //
  //Output - Println
  //Mutliple ERROR statements based on parameters, like Contructors
  void errorStatment(String description) {
    println(description);
  }//End Hello World
  void errorStatment(String description, float variable) {
    println(description, variable);
  }//End Hello World
  //
}//End Music Player Class
