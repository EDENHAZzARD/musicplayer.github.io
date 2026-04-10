int checkNum (int i) {
  if ( i >= numberOfFiles ) {
    currentFile = 0;
  } else if ( i <= -1 ) {
    i = 0;
  }
  return i;
}
int loopVar( int i ) {
  if ( i < numberOfFiles ) {
    i++;
  } else if ( i == numberOfFiles ) {
    currentFile = 0;
  } else if ( i == -1 ) {
    i = 0;
  }
  checkNum (i);
  return i;
}//End Next
int loopVar( int i, int total ) {
  if ( i < total ) {
    i++;
  } else if ( i == total ) {
    currentFile = 0;
  } else if ( i == -1 ) {
    i = 0;
  }
  checkNum (i);
  return i;
}//End Next
//
//End Next
