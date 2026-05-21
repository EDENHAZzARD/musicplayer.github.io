import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
/* Creating Buttons - HoverOver in draw()
 - draw() updates mouseX&Y 60x per second
 - CANVAS repeats all code like a flipbook
 
 - Code explored:
 - If-Else
 - Hover Effects
 - Buttons
 
 - Next:
 - Music Dynamic v2
*/

//
// Global Variables
//
int appWidth, appHeight;

float quitDivX, quitDivY, quitDivWidth, quitDivHeight;
float playDivX, playDivY, playDivWidth, playDivHeight;

float playSymbolX1, playSymbolY1;
float playSymbolX2, playSymbolY2;
float playSymbolX3, playSymbolY3;

boolean playButton = false;
boolean quitButton = false;
boolean nightMode = false;

color resetBackground, resetInk;
color resetBackgroundDay, resetInkDay;
color resetBackgroundNight, resetInkNight;

color quitButtonInk;

color playColourBackground;
color playColourSymbol;
color playColourBackgroundActivated;
color playColourSymbolActivated;

color quitBackground;
color quitBackgroundActivated;

//
// SETUP
//
void setup() {

  size(500, 400);

  appWidth = width;
  appHeight = height;

  //
  // Button Sizes and Positions
  //
  quitDivX = appWidth * 9/10;
  quitDivY = 0;
  quitDivWidth = appWidth * 1/10;
  quitDivHeight = appHeight * 1/10;

  playDivX = appWidth * 4/10;
  playDivY = appHeight * 4.5/10;
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;

  //
  // Play Symbol Coordinates
  //
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;

  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;

  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;

  //
  // Text Settings
  //
  textAlign(CENTER, CENTER);
  textSize(24);

  //
  // Colours
  //
  color black = 0;
  color white = 255;

  color grayScale = 128;
  color gray = #B9B9B9;

  color red = #FF0000;
  color purple = #9D03FF;
  color yellow = #FFFF00;

  //
  // Day/Night Colours
  //
  resetBackgroundDay = white;
  resetInkDay = black;

  resetBackgroundNight = 64;
  resetInkNight = 192;

  //
  // Night Mode
  //
  if (nightMode) {

    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;

    playColourBackground = grayScale;
    playColourSymbol = gray;

    playColourBackgroundActivated = gray;
    playColourSymbolActivated = grayScale;

    quitBackground = gray;
    quitBackgroundActivated = red;

    quitButtonInk = grayScale;

  } else {

    resetBackground = resetBackgroundDay;
    resetInk = resetInkDay;

    playColourBackground = purple;
    playColourSymbol = yellow;

    playColourBackgroundActivated = yellow;
    playColourSymbolActivated = purple;

    quitBackground = white;
    quitBackgroundActivated = red;

    quitButtonInk = black;
  }
}

//
// DRAW
//
void draw() {

  //
  // Clears old frames
  //
  background(resetBackground);

  //
  // PLAY BUTTON HOVER
  //
  if (mouseX > playDivX &&
      mouseX < playDivX + playDivWidth &&
      mouseY > playDivY &&
      mouseY < playDivY + playDivHeight) {

    playButton = true;

  } else {

    playButton = false;
  }

  //
  // Draw Play Button
  //
  if (playButton) {

    fill(playColourBackgroundActivated);

  } else {

    fill(playColourBackground);
  }

  rect(playDivX, playDivY, playDivWidth, playDivHeight);

  //
  // Draw Play Symbol
  //
  if (playButton) {

    fill(playColourSymbolActivated);

  } else {

    fill(playColourSymbol);
  }

  triangle(
    playSymbolX1, playSymbolY1,
    playSymbolX2, playSymbolY2,
    playSymbolX3, playSymbolY3
  );

  //
  // QUIT BUTTON HOVER
  //
  if (mouseX > quitDivX &&
      mouseX < quitDivX + quitDivWidth &&
      mouseY > quitDivY &&
      mouseY < quitDivY + quitDivHeight) {

    quitButton = true;

  } else {

    quitButton = false;
  }

  //
  // Draw Quit Button
  //
  if (quitButton) {

    fill(quitBackgroundActivated);

  } else {

    fill(quitBackground);
  }

  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);

  //
  // Draw X
  //
  fill(quitButtonInk);

  text(
    "X",
    quitDivX + quitDivWidth/2,
    quitDivY + quitDivHeight/2
  );
}

//
// MOUSE PRESSED
//
void mousePressed() {

  //
  // Quit Button
  //
  if (quitButton) {

    println("Closing Program");

    noLoop();
    exit();
  }

  //
  // Play Button
  //
  if (playButton) {

    println("Play My Song");
  }
}

//
// KEY PRESSED
//
void keyPressed() {
}
