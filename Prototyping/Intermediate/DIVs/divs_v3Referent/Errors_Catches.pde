/* Note: introduces concept of multiple constructors in Advanced CS
 - Number of Parameters
 - Type of Parameter in Strongly Formatted Language
 */
 //
void ErrorCheck(String statement) {
  println(statement);
}
void ErrorCheck(String statement, int variable) {
  println(statement, variable);
}
void ErrorCheck(String statement, float variable) {
  println(statement, variable);
}
void ErrorCheck(String statement, int var1, float var2) {
  println(statement, var1, var2);
}
void ErrorCheck(String statement, float var1, float var2) {
  println(statement, var1, var2);
}
void ErrorCheck(String statement, float[] array) {
  println("\n" + statement); //Giving Space to Listing the Array
  printArray(array);
}
