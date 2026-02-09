/* DIVs in Procedural VOICE
 
 -TBA
 
 */
//
//Libraries - Minim
//
//Global Vaqriables
int appWidth, appHeight;
/*
void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth;
 shorterSide *= 0.9;  //90% of the origonal
 size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 }//End Seetings
 */
void setup() {
  println(displayWidth, displayHeight);
  //size(600, 400); //width, height
  fullScreen();
  appWidth = displayWidth; //Best Practice
  appHeight = displayHeight;
  //
  divs();
  //
}//End Setup
//
void draw() {
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
