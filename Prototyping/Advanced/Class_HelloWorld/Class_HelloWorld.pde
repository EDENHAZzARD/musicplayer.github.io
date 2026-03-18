/* DIVs for Music Interface
 */
//
//Libraries
//
//Classes - Objects
MusicPlayer musicPlayer;
//
// Global Variables
//
//void settings() {}//End Settings
//Note: CANVAS based on DISPLAY, see Intermedate
//
void setup() {
  fullScreen();
  musicPlayer = new MusicPlayer(); //ERROR, Constructor: if undeclared, NullPointerException, like variable
  //class.draw();
  //class.errorStatment("Hello World, second time");
  int secondTime = 2;
  musicPlayer.ErrorCatch("Hello World", secondTime);
}//End Setup
//
void draw() {
}//End Draw
//
void keyPressed() {
}//End KeyPressed
//
void mousePressed() {
}//End MousePressed
//
//End DRIVER
