MusicPlayer player; // Declare a global MusicPlayer object

void setup() {
  size(800, 600); // Set the canvas size to 800x600
  player = new MusicPlayer(); // Initialize the MusicPlayer object
}

void draw() {
  player.draw(); // Call the draw method of the MusicPlayer object
}

void mousePressed() {
  player.mousePressed(); // Call the mousePressed method of the MusicPlayer object
}

// MusicPlayer class
class MusicPlayer {
  //
  // Global Variables
  //
  int exitButtonX, exitButtonY, buttonSize; // Exit button properties
  int squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight; // Create Square button properties
  boolean drawSquare = false; // Flag to determine if the square should be drawn

  // Constructor
  MusicPlayer() {
    // Initialize Exit button properties
    buttonSize = 50; // Size of the square button
    exitButtonX = width - buttonSize - 10; // Top-right corner with 10px padding
    exitButtonY = 10;

    // Initialize Create Square button properties
    squareButtonWidth = 120;
    squareButtonHeight = 30;
    squareButtonX = 10; // Top-left corner with 10px padding
    squareButtonY = 10;
  } // End Constructor

  void draw() {
    background(200); // Clear the screen with a gray background

    // Draw the Exit button as a square
    fill(255, 0, 0); // Red color
    rect(exitButtonX, exitButtonY, buttonSize, buttonSize, 5); // Square with rounded corners
    fill(255); // White color for the "X"
    textAlign(CENTER, CENTER);
    textSize(20); // Increase the font size for a big "X"
    text("X", exitButtonX + buttonSize / 2, exitButtonY + buttonSize / 2);

    // Draw the Create Square button
    fill(0, 0, 255); // Blue color
    rect(squareButtonX, squareButtonY, squareButtonWidth, squareButtonHeight, 5); // Rounded rectangle
    fill(255); // White text
    textSize(12); // Reset font size for normal text
    text("Create Square", squareButtonX + squareButtonWidth / 2, squareButtonY + squareButtonHeight / 2);

    // Draw the square in the middle if the flag is true
    if (drawSquare) {
      fill(0, 255, 0); // Green color
      rect(width / 2 - 50, height / 2 - 50, 100, 100); // Square centered in the canvas
    }
  } // End Draw

  void mousePressed() {
    // Check if the mouse is within the Exit button bounds
    if (mouseX > exitButtonX && mouseX < exitButtonX + buttonSize &&
        mouseY > exitButtonY && mouseY < exitButtonY + buttonSize) {
      exit(); // Exit the program
    }

    // Check if the mouse is within the Create Square button bounds
    if (mouseX > squareButtonX && mouseX < squareButtonX + squareButtonWidth &&
        mouseY > squareButtonY && mouseY < squareButtonY + squareButtonHeight) {
      drawSquare = true; // Set the flag to true to draw the square
    }
  } // End mousePressed
} // End MusicPlayer Class
