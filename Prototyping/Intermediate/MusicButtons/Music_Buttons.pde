/* Note:
 -
 */
//Global Variables'
int randomButtonY, randomButtonDimension, buttonY, buttonWidth, numberOfButtons=12;
float[] musicButtonDivX = new float[numberOfButtons];
//
void populationBuild() {
  //Population Building
  buttonWidth = appWidth/13; //Number of Buttons in a Row + 2xPadding
  buttonY = appHeight*3/5; //Most Buttons
  int randomButtonX = 0;
  randomButtonY = 0;
  randomButtonDimension = appHeight*1/20; //Changed to SQUARE
  //musicButtonDivX
  musicButtonDivX[0] = randomButtonX;
  for ( int i=1; i<musicButtonDivX.length; i++ ) {
    musicButtonDivX[i] = buttonWidth*i;
  }
  //
}//End Population Build
//
void drawMusicDivs( float x, float y, float d ) {
  square( x, y, d);
}//End Music DIVs
void drawMusicDivs( float[] x, float y, float d ) {
  for ( int i=1; i<musicButtonDivX.length; i++ ) {
    square( x[i], y, d);
  }
}//End Music DIVs
//
void musicSymbol( int index, float divX, float divY, float divDimension ) { //index from X-Var, musicButtonDivX
  divX = smallerNum( divX, divDimension );
  divY = smallerNum( divY, divDimension );
  divDimension = smallerNum( divDimension );
  //
  if ( index==1 || index==2 || index==7 || index==8 ) drawMusicDivs( divX, divY, divDimension );
  if ( index==2 ) drawLines( divX, divY, divDimension );
  if ( index==6 ) drawWideTriangle( 6, divX, divY, divDimension );
  if ( index==7 || index==8 ) {
    divX = smallerNum( divX, divDimension );
    divY = smallerNum( divY, divDimension );
    divDimension = smallerNum( divDimension );
    drawMusicDivs( divX, divY, divDimension );
  }
}//End Music Symbols
float smallerNum( float divXY, float divDimension ) {
  return divXY = divXY + divDimension*1/4;
}
float smallerNum( float divDimension ) {
  return divDimension*1/2;
}
void drawLines( float divX, float divY, float divDimension ) {
  line(divX, divY, divX+divDimension, divY+divDimension);
  line(divX+divDimension, divY, divX, divY+divDimension);
}
void drawWideTriangle( int index, float divX, float divY, float divDimension ) {
  triangle( divX, divY, divX+divDimension, divY+smallerNum(divDimension), divX, divY+divDimension  );
}
//
//End Subprogram Music Buttons
