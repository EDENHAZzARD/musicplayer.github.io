/* rect(X, Y, Width, Height); //From debugger and online documentation
 Note: the debugger expects rectangles to have float or double type variables
 Using Ratios measured by ruler
 */
//
//Global Variables
int numberOfDIVs = 1;
int numberOfParameters = 4; //Review from debugger
float divs[] = new float[numberOfDIVs*numberOfParameters];
//
void divs() {
  //
  // Primitive Style Reading, note float-arithmetic requiring casting
  divs[0] = appWidth * float(70)/float (279); //Awkward DIV, must rename all Mr. Mercer's Variables // 70=54+16
  divs[1] = appHeight * float(54)/float(216); //Base Number
  divs[2] = appWidth * float(134)/float(279); //102=54+(5*16)
  divs[3] = appHeight * float(102)/float(216); //102=54+(3*16)
  printArray(divs); //Inspect using printArray, println uses concatenation as a ERROR Inspection
  rectDIV(divs[0], divs[1], divs[2], divs[3]);
  //
  // Array Style Reading & DIV Verification
  float paperHeight = 216.0;
  float paperWidth = 279.0;
  float baseNumber = 54.0;
  float iterationStart = 16.0;
  int interation1 = 3; //Note: does not affect float-arithmetic
  int interation2 = 2;
  for (int i=0; i<divs.length; i+=4) {
    divs[i+1] = appHeight * baseNumber/paperHeight; //Base Number //ERROR: casting
    divs[i+interation1] = appHeight * (baseNumber + (iterationStart*interation1) ) /paperHeight; //102=54+(3*16)
    divs[i] = appWidth * (baseNumber+iterationStart) /paperWidth; //Awkward DIV, must rename all Mr. Mercer's Variables // 70=54+16
    divs[i+interation2] = appWidth * (baseNumber + (iterationStart * (interation1+interation2 ) ) ) /paperWidth ; //102=54+(5*16)
    //
    rectDIV(divs[i], divs[i+1], divs[i+2], divs[i+3]);
  }//End Reading DIVs
  //printArray(divs); //Inspect using printArray, println uses concatenation as a ERROR Inspection
  //
}//End DIVs
//
void rectDIV(float x, float y, float w, float h) {
  //DIVs: dividing out the CANVAS in non-overlapping sections
  rect(x, y, w, h);
}//End Rectangle Code
//
//End DIVs
