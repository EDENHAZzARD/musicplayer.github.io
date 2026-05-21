/* File Loading for
 - Image Files
 - Note: Music and Images match indices 1:1
 - Different Folders
 - Mixing Global Variables & Local Variables
 */
int numberOfFiles = 0; //Best Practice
int currentFile = numberOfFiles - numberOfFiles; //ZERO
//
PImage[] imagesPlayList;
//
void fileImageLoading() {
  String upArrow = ".."; //2x
  String open = "/";
  String dependanciesFolder = "Dependancies"; //Relative Pathway
  String imagesFolder = "Images"; //Relative Pathway
  // if ( numberOfFiles==0 ) ... separete reading images with reading music
  String imagesDirectory = sketchPath( upArrow + open + upArrow + open + upArrow + open + dependanciesFolder + open + imagesFolder + open ); //Hardcoded Folder Design
  //ErrorCheck("Inspection, Images Directory:", imagesDirectory);
  //
  //currentSong variable controls Music and Image to CANVAS
  fileReading(imagesDirectory); //Sets Music Variables, used for images
} //End File Loading
//
void fileReading(String directory) {
  File directoryLocal = new File(directory); //Uses Java Library to create class (variables & code)
  //File[] fileNames local & used for both music and images
  File[] fileNames = directoryLocal.listFiles(); //Uses built in class to list all files
  ErrorCheck("Here, to delete", fileNames);
  //
  //String[] files local and used for both music and images
  String[] files = new String[fileNames.length];
  //Load the Width & Height from the FILE
  int i=0;
  if ( fileNames != null ) {
    for ( File file : fileNames ) { //FOR EACH Loop, creates local class
      files[i] = directory + file.getName(); //print fileNames.getName() Object to String
      //Note: getName() is built in code
      i++; //iteration necessary here, not in regular FOR
    }
  } else {
    ErrorCheck("See fileReaeding(String pathway), fileNames==NULL");
  }
  //First Time Only
  if (numberOfFiles==0) {
    numberOfFiles = files.length; //Global Used for both music and images, populated once.
    imageLoading( files );
  }
  //ErrorCheck("Inspect Variable, File Loading / fileReading()", files);
} //End File Reading Loading
//

void imageLoading(String[] files) {
  imagesPlayList = new PImage[numberOfFiles]; //sets the array length
  int fileNumber=0;
  while ( fileNumber < numberOfFiles ) {
    imagesPlayList[ fileNumber ] = loadImage( files[ fileNumber ] );
    //ErrorCheck("Verifying Width & Height of Loaded Images, see imageLoading() in File Loading", imagesPlayList[fileNumber].width, imagesPlayList[fileNumber].height );
    fileNumber++; //functions similar to FOR
  }
  checkLoadImage(); //See Image
} //End Image Loading
//
//
//End SubProgram File Loading
