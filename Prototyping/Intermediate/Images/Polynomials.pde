/* Calling a Procedure to arithmetic, returning a value
 **See ERRORs Catches first to expereince passing parameters and constructing procedures
 
 - Adding and Subtracting changed by coefficient of -1
 - ZERO-coefficient "deleting" terms
 
 What is not called
 - single mutiplication
 - FOR Loops where formulae are easier read without procedure
 */
//
float poly( float a, float x, float b, float y ) {
  //Note: a, b = {-1, 0, 1}
  //Note: a, b requires a fraction or decimal sometimes
  //Note: x, y are airthmetic variables
  return (a*x) + (b*y) ;
} //END
//
float poly( int a, float x, int b, float y, float c, float z ) {
  //Note: a, b, c = {-1, 0, 1}
  //Note: a, b, c requires a fraction or decimal sometimes
  //Note: x, y, z are airthmetic variables
  return (a*x) + (b*y) + (c*z) ;
} //END
//
//Note: building Rows for DIVs
void buildingRow(float[] row, float textHeight, float referent) {
  row[0] = poly( 1, divs[1], 1, referent, 0, 0 ); //divs[1] + referent
  row[1] = poly( 1, row[0], 1, textHeight, 0.5, referent ); //row[0] + textHeight + referent*1/2
  row[2] = poly( 1, row[1], 1, referent, 0.5, referent ); //row[1] + referent + referent*1/2;
} //End Building Rows
