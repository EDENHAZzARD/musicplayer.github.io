/* DIVs in Procedural VOICE
 
 Rmeinders
 - Libraries add specific functions to ease programming burdon
 - Must add some libraries in the IDE and the code, like Minim
 - Global Varaibles on harddrive used throuhgout the program sections
 
 - only one rect() line, sees all variables
 - using arrays, not primitive variables
 
 - Once setup() is done, draw() starts looping
 - Can temporarily pause draw() with noLoop() & loop() to wait (behind booleans or interactions)
 - Note: delay() will stop the program for a specified time
 
 - Reading Code the cursor & braces
 
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
//
/* Optional Code based on Monitor, not fullScreen()
 void settings() {
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 shorterSide *= 0.9; //90%, WINDOW Frame
 size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
 println("Display Questions", displayWidth, displayHeight, shorterSide);
 println("CANVAS Size Key Variables for setup()", width, height);
 } //End settings
 //
 void setup() {
 // ERROR IllegalStateException: cannot use a var in size()
 println(displayWidth, displayHeight);
 int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
 size(shorterSide, shorterSide); //
 //
 //fullScreen(); //displayWidth, displayHeight
 } //End setup
 //
 //End Optional SETTINGS Code
 */
//
void setup() {
  //println(displayWidth, displayHeight); //Inspection of Variables
  //size(); //width //height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth; //Best Practice
  appHeight = displayHeight;
  //
  divs();
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
