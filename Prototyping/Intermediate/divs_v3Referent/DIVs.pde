/* rect(X, Y, Width, Height); //From debugger and online documentation
 Note: the debugger expects rectangles to have float or double type variables
 Using Ratios measured by ruler
 */
//
//Global Variables
int numberOfDIVs = 16; //Count the # of rect()
int numberOfParameters = 4; //Review from debugger
float divs[] = new float[numberOfDIVs*numberOfParameters];
//Note: Advanced CS creates an array without Global Variables
//
void divs() {
  //
  //Develop a Grid based on the smallest DIV or measure
  //Music Buttons across the Width of Music Player space
  //NOTE: to be erased after FOR Built
  //ErrorCheck("Did the Array Elements load correctly:", divs.length);
  //rect(0) must be defined for ERROR Check
  divs[0] = appWidth*1/4 ;
  divs[1] = appHeight*1/4 ;
  divs[2] = appWidth*1/2 ;
  divs[3] = appHeight*1/2 ;
  //
  float referent = divs[2] / 13;
  float textWidth = referent*5;
  float textHeight = referent*3;
  float[] column = new float[6];
  for ( int i=0; i<column.length; i++) {
    if ( i==0 ) column[0] = divs[0] + referent;
    if ( i>0 && i<5) column[i] = column[i-1] + referent;
    if ( i==5 ) column[i] = column[i-1] + referent*2;
  }
  //ErrorCheck("Column Loading", column);
  float[] row = new float[3];
  row[0] = divs[1] + referent;
  row[1] = row[0] + textHeight + referent*1/2;
  row[2] = row[1] + referent + referent*1/2;
  //ErrorCheck("Row Loading", row);
  //
  //Media Calculation ERROR
  float testHeight = referent*2.5 + textHeight*2;
  float errorIncrease = referent*1/2;
  //ErrorCheck("Testing Height of Music GUI", divs[1], divs[3]); //See WHILE-end
  while (divs[3] < testHeight) { //Height Calculation ERROR
    //Extend Height by moving divs[1] up one referent, and extending rect() one-referent
    divs[1] -= errorIncrease; //Move Y-start up
    row[0] = divs[1] + referent;
    row[1] = row[0] + textHeight + referent*1/2;
    row[2] = row[1] + referent + referent*1/2;
    divs[3] += errorIncrease; //Increase height
  }
  //ErrorCheck("Checked Height of Music GUI", divs[1], divs[3]);
  //
  int a=4; //Loop Counters for music buttons, first row
  int b=0; //DO NOT RESET once used
  int c=9; //Loop Counters for music buttons, second row
  int d=0; //DO NOT RESET once used
  for ( int i=4; i<divs.length; i++) { //CAUTION: i=4 until above rewritten
    if ( i%4==0 && int(i/4)==1 ) {
      divs[i] = appWidth-referent;
    } else if ( i%4==0 && int(i/4)==2 ) {
      divs[i] = appWidth*0;
    } else if ( i%4==0 && int(i/4)==3 ) {
      divs[i] = column[0];
    } else if ( i%4==0 && (int(i/4)==14 || int(i/4)==15) ) {
      divs[i] = column[5];
      //
      //Note: WHILE below not even tested if above if is executed
    } else if ( (i%4==0 || i%4==1) && ( int(i/4)>=a || int(i/4)<=8 ) ) {
      while ( b<5 ) {
        divs[(a*a)+(a*b)] = column[b];
        divs[ ((a*a)+(a*b)) + 1 ] = row[1];
        //
        //println(a, b, (a*a)+(a*b), ((a*a)+(a*b))+1, column[b], divs[(a*a)+(a*b)], divs[ ((a*a)+(a*b)) + 1 ]);
        b++; //CAUTION: do not reset once used
      }
    } else if ( (i%4==0 || i%4==1) && int(i/4)>=9 || int(i/4)<=13 ) {
      while ( d<5 ) {
        divs[(c*a)+(a*d)] = column[d];
        divs[ ((c*a)+(a*d)) + 1 ] = row[2];
        //
        //println(c, a, d, (c*a)+(a*d), ((c*a)+(a*d))+1, column[d], divs[(c*a)+(a*d)], divs[ ((c*a)+(a*d))+1] ) ;
        d++; //CAUTION: do not reset once used
      }
    } else {
      //Empty Else
    }
    //
    //See i%4==1 above
    if ( i%4==1 && int(i/4)==1 ) {
      divs[i] = appHeight*0;
    } else if ( i%4==1 && int(i/4)==2 ) {
      divs[i] = appHeight - referent;
    } else if ( i%4==1 && (int(i/4)==3 || int(i/4)==14) ) {
      divs[i] = row[0];
    } else if ( i%4==1 && int(i/4)==15 ) {
      divs[i] = row[1];
    } else {
      //Empty Else
    }
    //
    if ( ( i%4==2 || i%4==3 ) && (int(i/4)==1 || int(i/4)==2) ) { //int(i/4)<=8
      divs[i] = referent;
    } else if ( i%4==2  && (int(i/4)==3 || int(i/4)==14 || int(i/4)==15) ) {
      divs[i] = textWidth;
    } else if ( ( i%4==2 || i%4==3 ) && (int(i/4)>=4 || int(i/4)<=13) ) { //int(i/4)<=8
      divs[i] = referent;
    } else {
      //Empty Else
    }
    //
    //See Above for i%4==3
    if ( i%4==3  && (int(i/4)==3 || int(i/4)==14 || int(i/4)==15) ) {
      divs[i] = textHeight;
    } else {
      //Empty Else
    }
    //
    //ErrorCheck("Inside FOR, Checking index and DIV-var",  i, divs[i]);
  }
  //ErrorCheck("Inspect DIVs Array", divs);
}// End divs
//
//Note: index below matches %4 counting to load array
void seeDIVasRect() {
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
  }
}//End See DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h);
}//End Rectangle Code
//
//End DIVs
