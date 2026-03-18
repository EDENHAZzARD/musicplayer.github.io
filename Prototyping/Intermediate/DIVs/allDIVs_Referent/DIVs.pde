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
  // Primitive Style Reading, note float-arithmetic requiring casting
  int i = 0;
  divs[i] = appWidth*1/4 ;
  i++;
  divs[i] = appHeight*1/4 ; //i++ fails in array
  i++;
  divs[i] = appWidth*1/2 ;
  //
  float referent = divs[i] / 13;
  float column1 = divs[0] + referent;
  float row1 = divs[1] + referent;
  float textHeight = referent*3;
  float column2 = column1 + referent*6;
  float row2 = row1 + textHeight + referent*1/2;
  float row3 = row2 + referent ; //+ referent*1/2

  i++;
  divs[i] = appHeight*1/2 ;
  //Media Calculation ERROR
  float testHeight = referent*2.5 + textHeight*2;
  float errorIncrease = referent*1/2;
  println( divs[i] < testHeight, divs[i], testHeight, referent );
  while (divs[i] < testHeight) { //Height Calculation ERROR
    //Extend Height by moving divs[1] up one referent, and extending rect() one-referent
    divs[1] -= errorIncrease; //Move Y-start up
    row1 = divs[1] + referent;
    row2 = divs[1] + referent*4.5;
    divs[i] += errorIncrease; //Increase height 
  }

  //QUIT & Music Button
  i++;
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

  //Song Title
  i++;
  divs[i] = column1;
  i++;
  divs[i] = row1;
  i++;
  divs[i] = referent*5;
  i++;
  divs[i] = textHeight; //For Wrap Around


  i++; //Music Buttons
  divs[i] = column1;
  i++;
  divs[i] = row2;
  i++;
  divs[i] = referent*5;
  i++;
  divs[i] = referent;

  i++; //Left Over Buttons
  divs[i] = column1;
  i++;
  divs[i] = row3;
  i++;
  divs[i] = referent*5;
  i++;
  divs[i] = referent;

  //Meta Data Rectangles
  i++;
  divs[i] = column2;
  i++;
  divs[i] = row1;
  i++;
  divs[i] = referent*5;
  i++;
  divs[i] = textHeight;

  i++;
  divs[i] = column2;
  i++;
  divs[i] = row2;
  i++;
  divs[i] = referent*5;
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
