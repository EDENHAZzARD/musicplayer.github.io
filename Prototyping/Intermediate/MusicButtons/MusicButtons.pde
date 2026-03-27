/* Music Buttons
 */
//
//Global Variables
int appWidth, appHeight;
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  populationBuild();
  drawMusicDivs( musicButtonDivX[0], randomButtonY, randomButtonDimension );
  drawMusicDivs( musicButtonDivX, buttonY, buttonWidth );
  //
  //Simple FOR Drawing all Buttons
  for ( int i=0; i<musicButtonDivX.length; i++ ) {
    if (i==0) musicSymbol( 0, musicButtonDivX[0], randomButtonY, randomButtonDimension );
    if ( i!=0 ) musicSymbol( i, musicButtonDivX[i], buttonY, buttonWidth );
  }
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
} //End Key Pressed
//
//End MAIN
