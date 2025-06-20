void intro() {
  int n;
  fill(35,35,105);
  rect(-10,-10,820,820);
  n = 100;
  textSize(n);
  fill(255);
  text("breakout",200,300);
  if ( n > 25) {
    n = n - 1;
} //else {
//  n = n - 1;
//}
}

void introClicks() {
  if (mouseX > 0 && 800 > mouseX && mouseY > 0 && mouseY < 800) {
    mode = GAME; 
  }
}
