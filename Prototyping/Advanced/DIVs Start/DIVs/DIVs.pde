/* DIVs for Music Interface
 */
//
//Libraries
//
//Classes - Objects
MusicPlayer musicPlayer;
//
// Global Variables
int appWidth, appHeight;
//
//void settings() {}//End Settings
//Note: CANVAS based on DISPLAY, see Intermedate
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  musicPlayer = new MusicPlayer(16); //ERROR, Constructor: if undeclared, NullPointerException, like variable
  musicPlayer.draw();
  //musicPlayer.errorStatment("Hello World, second time");
}//End Setup
//
void draw() {}//End Draw
//
void keyPressed() {}//End KeyPressed
//
void mousePressed() {}//End MousePressed
//
//End DRIVER
