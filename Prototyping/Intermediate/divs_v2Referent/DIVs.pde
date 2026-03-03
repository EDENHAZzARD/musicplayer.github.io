/* rect(X, Y, Width, Height); //From debugger and online documentation
 Note: the debugger expects rectangles to have float or double type variables
 Using Ratios measured by ruler
 */
//
//Global Variables
int numberOfDIVs = 9; //Count the # of rect()
int numberOfParameters = 4; //Review from debugger
float divs[] = new float[numberOfDIVs*numberOfParameters];
//Note: Advanced CS creates an array without Global Variables
//
void divs() {
  //
  //Develop a Grid based on the smallest DIV or measure
  //Music Buttons across the Width of Music Player space
  //NOTE: to be erased after FOR Built
  divs[0] = appWidth*1/4 ;
  divs[1] = appHeight*1/4 ; //i++ fails in array
  divs[2] = appWidth*1/2 ;
  divs[3] = appHeight*1/2 ;
  //
  float referent = divs[2] / 13;
  float column1 = divs[0] + referent;
  float row1 = divs[1] + referent;
  float textWidth = referent*5;
  float textHeight = referent*3;
  float column2 = column1 + referent;
  float column3 = column2 + referent;
  float column4 = column3 + referent;
  float column5 = column4 + referent;
  float column6 = column5 + referent*2;
  //println( column1, column2, column3, column4, column5, column6 );
  float row2 = row1 + textHeight + referent*1/2;
  float row3 = row2 + referent + referent*1/2;
  //
  //Media Calculation ERROR
  float testHeight = referent*2.5 + textHeight*2;
  float errorIncrease = referent*1/2;
  while (divs[3] < testHeight) { //Height Calculation ERROR
    //Extend Height by moving divs[1] up one referent, and extending rect() one-referent
    divs[1] -= errorIncrease; //Move Y-start up
    row1 = divs[1] + referent;
    row2 = row1 + textHeight + referent*1/2;
    row3 = row2 + referent + referent*1/2;
    divs[3] += errorIncrease; //Increase height
  }
  //
  for ( int i=4; i<divs.length; i++) { //CAUTION: i=4 until above rewritten
    if ( i%4==0 && int(i/4)==0 ) {
      divs[i] = appWidth*1/4;
    } else if ( i%4==0 && int(i/4)==1 ) {
      divs[i] = appWidth-referent;
    } else if ( i%4==0 && int(i/4)==2 ) {
      divs[i] = appWidth*0;
    } else if ( i%4==0 && ( int(i/4)==3 || int(i/4)==4) ) {
      divs[i] = column1;
    } else if ( i%4==0 && int(i/4)==5 ) {
      divs[i] = column2;
    } else if ( i%4==0 && int(i/4)==6 ) {
      divs[i] = column3;
    } else if ( i%4==0 && int(i/4)==7 ) {
      divs[i] = column4;
    } else if ( i%4==0 && int(i/4)==8 ) {
      divs[i] = column5;
    } else {
      //Emnpty Else
    }
    //
    if ( i%4==1 && int(i/4)==0 ) {
      divs[i] = appHeight*1/4;
    } else if ( i%4==1 && int(i/4)==1 ) {
      divs[i] = appHeight*0;
    } else if ( i%4==1 && int(i/4)==2 ) {
      divs[i] = appHeight - referent;
    } else if ( i%4==1 && int(i/4)==3 ) {
      divs[i] = row1;
    } else if ( i%4==1 && int(i/4)>=4 ) { //int(i/4)<=8
      divs[i] = row2;
    } else {
      //Empty Else
    }
    //
    if ( i%4==2 && int(i/4)==0 ) {
      divs[i] = appWidth*1/2;
    } else if ( ( i%4==2 || i%4==3 ) && (int(i/4)==1 || int(i/4)==2 || int(i/4)>=4) ) { //int(i/4)<=8
      divs[i] = referent;
    } else if ( i%4==2  && int(i/4)==3 ) {
      divs[i] = textWidth;
    } else {
      //Empty Else
    }
    //
    //See Above for i%4==3
    if ( i%4==3 && int(i/4)==0 ) {
      divs[i] = appHeight*1/2;
    } else if ( i%4==3  && int(i/4)==3 ) {
      divs[i] = textHeight;
    } else {
      //Empty Else
    }
    //
    //Building 4 VARs at a time
    //int i=0; i<4; i++
    println(i, divs[i]);
  }
  //
  //QUIT & Music Button: 4-11
  //divs[i] = appWidth - referent;
  //divs[i] = appHeight*0;
  //divs[i] = referent;
  //divs[i] = referent;
  //divs[i] = appWidth*0;
  //divs[i] = appHeight - referent;
  //divs[i] = referent;
  //divs[i] = referent;
  //
  //Song Title: 12-15
  //divs[i] = column1;
  //divs[i] = row1;
  //divs[i] = textWidth;
  //divs[i] = textHeight; //For Wrap Around

  //Music Buttons: 16-35
  //divs[i] = column1;
  //divs[i] = row2;
  //divs[i] = textWidth;
  //divs[i] = referent;

  //Left Over Buttons: 36-55
  //divs[i] = column1;
  //divs[i] = row3;
  //divs[i] = textWidth;
  //divs[i] = referent;

  //Meta Data Rectangles: 56-63
  //divs[i] = column6;
  //divs[i] = row1;
  //divs[i] = textWidth;
  //divs[i] = textHeight;

  //divs[i] = column6;
  //divs[i] = row2;
  //divs[i] = textWidth;
  //divs[i] = textHeight;

  //printArray(divs); //Inspect using printArray, println uses concatenation as a ERROR Inspection
  for ( int j=0; j<divs.length; j+=4 ) {
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
  }//End DIVs FOR
}//End DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h);
}//End Rectangle Code
//
//End DIVs
