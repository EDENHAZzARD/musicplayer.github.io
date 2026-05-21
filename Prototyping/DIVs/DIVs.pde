/* DIVs 2D Rectangles, Assignment
 - Count the rect()s you require from your Case Study
 - Copy and Paste this number as rect(DIV), see below
 - Also copy and paste the group-of-4 variables
 - Change the name of all Variables by adding a prefix-type variable, in Camel Casing
 
 - In the future
 - An array will demonstrate a simple alpha-numeric naming system
 - Developer will create a legend for index #
 - Developer will program each section
 - Sections may be overlapping
 
 ** Note: no sections will be overlapping here
 
 */
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population using unitless ratios (i.e. millimeters to pixels)
int paperWidth = 279; //Best Practice: local variables use to make DIV Variables
int paperHeight = 216; //MrM #'s, students must use their own
float DivX = appWidth * ??? / paperWidth;
float DivY = appHeight * ??? / paperHeight;
float DivWidth = appWidth * ??? / paperWidth;
float DivHeight = appHeight * ??? / paperHeight;
//
//DIVs
//rect( DivX, DivY, DivWidth, DivHeight );
rect( songTitleDivX, songTitleDDivY, songTitleDDivWidth, songTitleDivHeight );
rect( DivX, DivY, DivWidth, DivHeight ); //Copy and Paste, rename variables
rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX, DivY, DivWidth, DivHeight );
//
