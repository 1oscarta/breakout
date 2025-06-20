void gameover() {
  if (score == 49) {
   fill(255);
    rect(0,0,800,800);
    textSize(175);
    fill(0);
    text("you wins",100,350);
    textSize(50);
    text("click anywhere to play again",175,450);
  }
  if (lives == 0) {
    fill(0);
    rect(0,0,800,800);
    textSize(175);
    fill(255);
    text("you lost",100,350);
    textSize(50);
    text("click anywhere to play again",175,450);
  }
}

void gameoverClicks() {
  if (mouseX > 0 && 800 > mouseX && mouseY > 0 && mouseY < 800) {
    mode = INTRO; 
    lives = 3;
    score = 0;
  }
}
