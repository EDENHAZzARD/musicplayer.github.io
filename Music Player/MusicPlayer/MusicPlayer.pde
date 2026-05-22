/* ========= MUSIC PLAYER ========= */

import ddf.minim.*;

Minim minim;

PImage kanye;

AudioPlayer[] songs;

int currentSong = 0;

float playX, playY;
float nextX, backX;
float plusX, minusX;
float shuffleX;

boolean playButton;
boolean nextButton;
boolean backButton;
boolean plusButton;
boolean minusButton;
boolean shuffleButton;
boolean quitButton;


//
// SETUP
//
void setup() {

  fullScreen();

  minim = new Minim(this);

  kanye = loadImage("kanye.png");

  //
  // LOAD SONGS
  //
  songs = new AudioPlayer[] {

    minim.loadFile("Beat_Your_Competition.mp3"),
    minim.loadFile("Cycles.mp3"),
    minim.loadFile("Eureka.mp3"),
    minim.loadFile("Ghost_Walk.mp3"),
    minim.loadFile("groove.mp3"),
    minim.loadFile("Newsroom.mp3"),
    minim.loadFile("ping-pong-classic-arcade-game-116818.mp3"),
    minim.loadFile("Pong World.mp3"),
    minim.loadFile("Start_Your_Engines.mp3"),
    minim.loadFile("The_Simplest.mp3")
  };

  //
  // BUTTON POSITIONS
  //
  playX = width/2 - 100;
  playY = height - 140;

  backX = playX - 140;
  nextX = playX + 220;

  minusX = backX - 170;
  plusX = nextX + 140;

  shuffleX = width/2 - 110;

  textAlign(CENTER, CENTER);
}


//
// DRAW
//
void draw() {

  background(0);

  //
  // IMAGE
  //
  imageMode(CENTER);

  image(
    kanye,
    width/2,
    height/2 - 100,
    300,
    300
  );

  //
  // TITLE
  //
  fill(255);

  textSize(45);

  text(
    "NOW PLAYING",
    width/2,
    80
  );

  textSize(30);

  text(
    "Song " + (currentSong + 1),
    width/2,
    140
  );

  //
  // HOVER
  //
  playButton = over(playX, playY, 200, 80);

  backButton = over(backX, playY, 120, 80);

  nextButton = over(nextX, playY, 120, 80);

  minusButton = over(minusX, playY, 150, 80);

  plusButton = over(plusX, playY, 150, 80);

  shuffleButton =
    over(shuffleX, playY-120, 220, 80);

  quitButton =
    over(width-90, 10, 80, 60);

  //
  // BUTTONS
  //
  button(minusX, playY, 150, 80, "-10s", minusButton);

  button(backX, playY, 120, 80, "<<", backButton);

  button(nextX, playY, 120, 80, ">>", nextButton);

  button(plusX, playY, 150, 80, "+10s", plusButton);

  button(shuffleX, playY-120, 220, 80,
    "SHUFFLE", shuffleButton);

  //
  // PLAY BUTTON
  //
  fill(playButton ? #FFFF00 : #9D03FF);

  rect(playX, playY, 200, 80, 20);

  fill(0);

  //
  // PAUSE ICON
  //
  if (songs[currentSong].isPlaying()) {

    rect(playX+65, playY+15, 20, 50);

    rect(playX+115, playY+15, 20, 50);

  } else {

    //
    // PLAY ICON
    //
    triangle(
      playX+70, playY+15,
      playX+140, playY+40,
      playX+70, playY+65
    );
  }

  //
  // QUIT BUTTON
  //
  fill(quitButton ? #FF0000 : 255);

  rect(width-90, 10, 80, 60, 10);

  fill(0);

  text("X", width-50, 40);
}


//
// BUTTON FUNCTION
//
void button(
  float x,
  float y,
  float w,
  float h,
  String words,
  boolean hover
) {

  fill(hover ? #FFFF00 : #9D03FF);

  rect(x, y, w, h, 20);

  fill(0);

  textSize(28);

  text(words, x+w/2, y+h/2);
}


//
// HOVER FUNCTION
//
boolean over(
  float x,
  float y,
  float w,
  float h
) {

  return
    mouseX > x &&
    mouseX < x+w &&
    mouseY > y &&
    mouseY < y+h;
}


//
// MOUSE PRESSED
//
void mousePressed() {

  //
  // PLAY / PAUSE
  //
  if (playButton) {

    if (songs[currentSong].isPlaying()) {

      songs[currentSong].pause();

    } else {

      songs[currentSong].play();
    }
  }

  //
  // NEXT
  //
  if (nextButton) {

    songs[currentSong].pause();

    songs[currentSong].rewind();

    currentSong++;

    if (currentSong >= songs.length) {

      currentSong = 0;
    }

    songs[currentSong].play();
  }

  //
  // BACK
  //
  if (backButton) {

    songs[currentSong].pause();

    songs[currentSong].rewind();

    currentSong--;

    if (currentSong < 0) {

      currentSong = songs.length - 1;
    }

    songs[currentSong].play();
  }

  //
  // SHUFFLE
  //
  if (shuffleButton) {

    songs[currentSong].pause();

    songs[currentSong].rewind();

    currentSong =
      int(random(songs.length));

    songs[currentSong].play();
  }

  //
  // -10 SECONDS
  //
  if (minusButton) {

    songs[currentSong].cue(
      max(
        0,
        songs[currentSong].position()-10000
      )
    );
  }

  //
  // +10 SECONDS
  //
  if (plusButton) {

    songs[currentSong].cue(
      songs[currentSong].position()+10000
    );
  }

  //
  // QUIT
  //
  if (quitButton) {

    exit();
  }
}
