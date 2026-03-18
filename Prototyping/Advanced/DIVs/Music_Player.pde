class MusicPlayer {
  //
  //Global Variables
  float[] divs;
  Boolean musicGUI=false;
  //
  //Constructor & Multiple Constructors (different parameters)
  MusicPlayer() {
    //See Abstract Classes
  }//End Constructor
  //
  MusicPlayer(int numberOfRectangles) {
    this.divs = new float[numberOfRectangles*4];
    divs();
  }//End Constructor
  //
  void draw() {
    //ERRORCheck("Hello World");
    seeMusicGUI();
  }//End Draw
  void mousePressed() {
    //ERROR Check NUM below
    //int num=8; //ERROR Check i%4=0, int(i/4)=3, num=8
    //println(divs[num], divs[num+1], divs[num+2], divs[num+3]);
    //
    //mouseX>divs[num] && mouseX<divs[num]+divs[num+2] && mouseY>divs[num+1] && mouseY<divs[num+1]+divs[num+3]
    //CAUTION: IF Statements will execute each time
    //Note: easily used with COPY & PASTE
    int num=4;
    if ( mouseReturn (num) ) exit();
    num=8;
    if ( mouseReturn (num) ) musicGUI = varSwitch(musicGUI);
  }// End Mouse Pressed
  void keyPressed() {
    //key=='CAP' || key=='LOWER' //Note" Caps Lock
    //key==CODED || keyCode==ESC //Special Keys
    if (key==CODED || keyCode==ESC) exit();
    if (key=='Q' || key=='q') exit();
    if (key=='M' || key=='m') musicGUI = varSwitch(musicGUI);
  }//End Key Pressed
  Boolean varSwitch(Boolean variable) {
    if ( variable==true ) {
      return variable=false;
    } else {
      return variable=true;
    }
  }//End Boolean Variable Switch
  Boolean mouseReturn (int num) {
    return mouseX>divs[num] && mouseX<divs[num]+divs[num+2] && mouseY>divs[num+1] && mouseY<divs[num+1]+divs[num+3];
  }//End Mouse Return
  //
  //Functions or Behaivours
  void divs() {
    //
    //Develop a Grid based on the smallest DIV or measure
    //Music Buttons across the Width of Music Player space
    //NOTE: to be erased after FOR Built
    //ErrorCheck("Did the Array Elements load correctly:", divs.length);
    //rect(0) must be defined for ERROR Check
    divs[0] = appWidth*1/4 ;
    divs[1] = appHeight*1/4 ;
    divs[2] = appWidth*1/2 ;
    divs[3] = appHeight*1/2 ;
    //
    float referent = divs[2] / 13;
    float textWidth = referent*5;
    float textHeight = referent*3;
    float[] column = new float[6];
    for ( int i=0; i<column.length; i++) {
      if ( i==0 ) column[0] = divs[0] + referent;
      if ( i>0 && i<5) column[i] = column[i-1] + referent;
      if ( i==5 ) column[i] = column[i-1] + referent*2;
    }
    //ErrorCheck("Column Loading", column);
    //Note: repeated below, thus code written once reference
    float[] row = new float[3];
    //Note: local varaibles to local variables, all deleted
    buildingRow(row, textHeight, referent); //See Polynomial
    //
    //Media Calculation ERROR
    float testHeight = poly( 2.5, referent, 2, textHeight ); //referent*2.5 + textHeight*2
    float errorIncrease = referent*1/2;
    //ErrorCheck("Testing Height of Music GUI", divs[1], divs[3]); //See WHILE-end
    while (divs[3] < testHeight) { //Height Calculation ERROR
      //Extend Height by moving divs[1] up one referent, and extending rect() one-referent
      divs[1] -= errorIncrease; //Move Y-start up
      buildingRow(row, textHeight, referent); //See Polynomial
      divs[3] += errorIncrease; //Increase height
    }
    //ErrorCheck("Checked Height of Music GUI", divs[1], divs[3]);
    //
    int a=4; //Loop Counters for music buttons, first row
    int b=0; //DO NOT RESET once used
    int c=9; //Loop Counters for music buttons, second row
    int d=0; //DO NOT RESET once used
    for ( int i=4; i<divs.length; i++) { //CAUTION: i=4 until above rewritten
      if ( i%4==0 && int(i/4)==1 ) {
        divs[i] = poly( 1, appWidth, -1, referent ); //appWidth-referent
      } else if ( i%4==0 && int(i/4)==2 ) {
        divs[i] = appWidth*0;
      } else if ( i%4==0 && int(i/4)==3 ) {
        divs[i] = column[0];
      } else if ( i%4==0 && (int(i/4)==14 || int(i/4)==15) ) {
        divs[i] = column[5];
        //
        //Note: WHILE below not even tested if above if is executed
      } else if ( (i%4==0 || i%4==1) && ( int(i/4)>=a || int(i/4)<=8 ) ) {
        while ( b<5 ) {
          divs[(a*a)+(a*b)] = column[b];
          divs[ ((a*a)+(a*b)) + 1 ] = row[1];
          //
          //println(a, b, (a*a)+(a*b), ((a*a)+(a*b))+1, column[b], divs[(a*a)+(a*b)], divs[ ((a*a)+(a*b)) + 1 ]);
          b++; //CAUTION: do not reset once used
        }
      } else if ( (i%4==0 || i%4==1) && int(i/4)>=9 || int(i/4)<=13 ) {
        while ( d<5 ) {
          divs[(c*a)+(a*d)] = column[d];
          divs[ ((c*a)+(a*d)) + 1 ] = row[2];
          //
          //println(c, a, d, (c*a)+(a*d), ((c*a)+(a*d))+1, column[d], divs[(c*a)+(a*d)], divs[ ((c*a)+(a*d))+1] ) ;
          d++; //CAUTION: do not reset once used
        }
      } else {
        //Empty Else
      }
      //
      //See i%4==1 above
      if ( i%4==1 && int(i/4)==1 ) {
        divs[i] = appHeight*0;
      } else if ( i%4==1 && int(i/4)==2 ) {
        divs[i] = poly( 1, appHeight, -1, referent ); //appHeight - referent;
      } else if ( i%4==1 && (int(i/4)==3 || int(i/4)==14) ) {
        divs[i] = row[0];
      } else if ( i%4==1 && int(i/4)==15 ) {
        divs[i] = row[1];
      } else {
        //Empty Else
      }
      //
      if ( ( i%4==2 || i%4==3 ) && (int(i/4)==1 || int(i/4)==2) ) { //int(i/4)<=8
        divs[i] = referent;
      } else if ( i%4==2  && (int(i/4)==3 || int(i/4)==14 || int(i/4)==15) ) {
        divs[i] = textWidth;
      } else if ( ( i%4==2 || i%4==3 ) && (int(i/4)>=4 || int(i/4)<=13) ) { //int(i/4)<=8
        divs[i] = referent;
      } else {
        //Empty Else
      }
      //
      //See Above for i%4==3
      if ( i%4==3  && (int(i/4)==3 || int(i/4)==14 || int(i/4)==15) ) {
        divs[i] = textHeight;
      } else {
        //Empty Else
      }
      //
      //ErrorCheck("Inside FOR, Checking index and DIV-var",  i, divs[i]);
    }
    //ErrorCheck("Inspect DIVs Array", divs);
  }//End DIVs
  //
  void buildingRow(float[] row, float textHeight, float referent) {
    row[0] = poly( 1, divs[1], 1, referent, 0, 0 ); //divs[1] + referent
    row[1] = poly( 1, row[0], 1, textHeight, 0.5, referent ); //row[0] + textHeight + referent*1/2
    row[2] = poly( 1, row[1], 1, referent, 0.5, referent ); //row[1] + referent + referent*1/2;
  } //End Building Rows
  //
  void seeQuitMusicButton() {
    for ( int j=4; j<9; j+=4 ) {
      rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
    }
  }//End See Quit & Music Button
  //
  void seeMusicGUI() {
    int j=0;
    rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
    for ( j=12; j<divs.length; j+=4 ) {
      rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
    }
  }//End See Music GUI
  //
  void rectDIV( float x, float y, float w, float h) {
    rect(x, y, w, h);
  } //End RECT
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
  //Getters
  Boolean musicPlayerGUI() {
    return musicGUI;
  }//End Music Player GUI
  //
  //
  //Setters
  //
  //Output - Println
  //Mutliple ERROR statements based on parameters, like Contructors
  void ERRORCheck(String description) {
    println(description);
  }//End
  void ERRORCheck(String description, float variable) {
    println(description, variable);
  }//End
  //
}//End Music Player Class
