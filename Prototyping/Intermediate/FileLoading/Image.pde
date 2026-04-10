void imageDrawing( PImage image, int i ) { //Not Aspect Ratio
  image( image, divs[i], divs[i+1], divs[i+2], divs[i+3] );
}//End Image
//
void imageDrawingAspectRatio( PImage image, int i ) {
  float imageWidthAdjusted;
  float imageHeightAdjusted;
  float imageAspectRatio_GreaterOne = ( image.width >= image.height ) ? float(image.width)/float(image.height) : float(image.height)/float(image.width) ; //Ternary Operator
  //ERROR, int populating float: truncating-adding zeros, casting
  /* Line Notes
   - Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
   - 2D information from Image, Apsect Ratio Number
   - Answers how to make image bigger or smaller
   - Computer calculated DIV width & height
   - Computer needs to compare image to DIV size difference
   */
  imageWidthAdjusted = divs[i+2]; //works for any image
  imageHeightAdjusted = ( image.width >= divs[i+2] ) ? imageWidthAdjusted/imageAspectRatio_GreaterOne : imageWidthAdjusted*imageAspectRatio_GreaterOne ; //Ternary Operator
  //
  //Verification: looks good
  //IF-statements, include more code than a phrase of
  if ( image.width > divs[i+2] ) {
    //println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
    //exit();
    int indexWhile = 0; //Local Variable to IF-Statement
    //** WHILE Loops can run infinitely with an error if not controlled
    while ( imageHeightAdjusted > divs[i+3] ) {
      //println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
      if ( indexWhile < 10000 ) {
        //Checking Image Size, below
      } else {
        //ERROR: Infinite Loop
        println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
        exit(); //doesn't work, must force WHILE Stop
        imageHeightAdjusted=divs[i+3]; //makes WHILE False, stops WHILE
      } //End Check Infinite loop
      //Image Adjustment Percent v Pixel
      imageWidthAdjusted *= 0.99; // -= 1
      imageHeightAdjusted = imageWidthAdjusted/imageAspectRatio_GreaterOne;
      //println("Inspection of percent decrase:", imageWidthAdjusted[i], imageHeightAdjusted[i], imageDivHeight);
    } //End WHILE
    //Percent will be too small, must count back up but be smaller than total iterations
    /* Accuracy Comment, for AP Students
     - When % change is too much, go back to the previous answer, decrease percent until decreasing pixels is most accurate
     - Need to answer what is accurate
     - FYI: 1% gets within 3 pixels of actual answer
     - AP Project: combine into faster answer by counting lines of code executed
     */
    /* Teacher ONLY: compare to Percent Decrease for Program Speed, minimum lines of code measure
     while ( imageHeightAdjusted[i]<imageDivHeight ) {
     println("Iteration of Pixel WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
     if ( indexWhile < 10000 ) {
     //Checking Image Size
     } else {
     //ERROR: Infinite Loop
     println("ERROR: infinite loop, Image Pixel WHILE, value:", indexWhile);
     //exit(); //doesn't work, must force WHILE Stop
     imageHeightAdjusted[i]=imageDivHeight;
     }
     imageHeightAdjusted[i]++;
     println("Inspection of Pixel decrease:", imageWidthAdjusted[i], imageHeightAdjusted[i], imageDivHeight);
     } //End WHILE Error Check, Counting Up
     */
    //
  } else {
    int indexWhile = 0; //Local Variable to IF-Statement
    //** WHILE Loops can run infinitely with an error if not controlled
    while ( imageHeightAdjusted < divs[i+3] ) {
      //println("Iteration of Percent WHILE Loop", indexWhile++); //prints value, then adds one, order is important in AP
      if ( indexWhile < 10000 ) {
        //Checking Image Size, below
      } else {
        //ERROR: Infinite Loop
        println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
        exit(); //doesn't work, must force WHILE Stop
        imageHeightAdjusted=divs[i+3]; //makes WHILE False, stops WHILE
      } //End Check Infinite loop
      //Image Adjustment Percent v Pixel
      imageWidthAdjusted *= 1.01; // -= 1
      imageHeightAdjusted = imageWidthAdjusted*imageAspectRatio_GreaterOne;
      //println("Inspection of percent decrase:", imageWidthAdjusted[i], imageHeightAdjusted[i], imageDivHeight);
    } //End WHILE
  }
  //
  /* CAUTION: local variable use v. Global Variable use (& garbage collection)
   - Calcualtion currently completed 60/s
   - if imageWidthAdjusted, imageHeightAdjusted compared to divs[i+2] & divs[i+3]
   ..& calculation redone when divs change, then saves as global variables
   - Calculation only needs to be done in setup()
   
   - TBA: divs[i], divs[i+1]
   ..AutoCentering LEFT, CENTER, RIGHT, TOP CENTER BOTTOM
   - Also see above
   */
  image( image, divs[i], divs[i+1], imageWidthAdjusted, imageHeightAdjusted );
}//End imageDrawingAspectRatio
//
void checkLoadImage() {
  PImage errorImage = loadImage( "Old man ERROR.png" );
  //Error image without need for pathway
  //Error image allows image() to be completed, notifying user of error
  //Demonstrates alternate way to load an image without a pathway
  for ( int i=0; i<imagesPlayList.length; i++ ) {
    if ( imagesPlayList[i] == null ) {
      ErrorCheck("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation, see File Loading or Image");
      imagesPlayList[i] = errorImage;
      exit(); //handled whenever the computer uses this part or Memory
    }
  }
}//End Image Setup()
//

//End Subprogram Image
