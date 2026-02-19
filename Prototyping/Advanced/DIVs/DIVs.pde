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
  musicPlayer.helloWorld();
}//End Setup
//
void draw() {}//End Draw
//
void keyPressed() {}//End KeyPressed
//
void mousePressed() {}//End MousePressed
//
//End DRIVER
