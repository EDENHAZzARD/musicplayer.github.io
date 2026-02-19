/* rect(X, Y, Width, Height); //From debugger and online documentation
 Note: the debugger expects rectangles to have float or double type variables
 Using Ratios measured by ruler
 */
//
//Global Variables
int numberOfDIVs = 8; //Count the # of rect()
int numberOfParameters = 4; //Review from debugger
float divs[] = new float[numberOfDIVs*numberOfParameters];
//Note: Advanced CS creates an array without Global Variables
//
void divs() {
  //
  // Primitive Style Reading, note float-arithmetic might require casting
  //Counting in Groups of 4, based on rect() object
  divs[0] = appWidth*1/4 ;
  divs[1] = appHeight*1/4 ; //i++ fails in array
  divs[2] = appWidth*1/2 ;
  //
  //Develop a Grid based on the smallest DIV or measure
  //Music BUttons across the Width of Music Player space
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
  float row2 = row1 + textHeight + referent*1/2;
  float row3 = row2 + referent + referent*1/2;
  //
  divs[3] = appHeight*1/2 ;
  //Media Calculation ERROR
  float testHeight = referent*2.5 + textHeight*2;
  float errorIncrease = referent*1/2;
  while (divs[3] < testHeight) { //Height Calculation ERROR
    //Extend Height by moving divs[1] up one referent, and extending rect() one-referent
    divs[1] -= errorIncrease; //Move Y-start up
    row1 = divs[1] + referent;
    row2 = row1 + textHeight + referent*1/2;
    divs[3] += errorIncrease; //Increase height
  }
  //
  //QUIT & Music Button: 4-11
  int i = 4;
  divs[i] = appWidth - referent;
  i++;
  divs[i] = appHeight*0;
  i++;
  divs[i] = referent;
  i++;
  divs[i] = referent;
  i++;
  divs[i] = appWidth*0;
  i++;
  divs[i] = appHeight - referent;
  i++;
  divs[i] = referent;
  i++;
  divs[i] = referent;

  //Song Title: 12-15
  i++;
  divs[i] = column1;
  i++;
  divs[i] = row1;
  i++;
  divs[i] = textWidth;
  i++;
  divs[i] = textHeight; //For Wrap Around

  i++; //Music Buttons: 16-35
  divs[i] = column1;
  i++;
  divs[i] = row2;
  i++;
  divs[i] = textWidth;
  i++;
  divs[i] = referent;

  //MAKE 5 MORE RECTs OR SQUARES HERE

  i++; //Left Over Buttons: 36-51
  divs[i] = column1;
  i++;
  divs[i] = row3;
  i++;
  divs[i] = textWidth;
  i++;
  divs[i] = referent;

  //MAKE 5 MORE RECTs OR SQUARES HERE, repeat of above

  //Meta Data Rectangles: 52-59
  i++;
  divs[i] = column6;
  i++;
  divs[i] = row1;
  i++;
  divs[i] = textWidth;
  i++;
  divs[i] = textHeight;

  i++;
  divs[i] = column6;
  i++;
  divs[i] = row2;
  i++;
  divs[i] = textWidth;
  i++;
  divs[i] = textHeight;

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
