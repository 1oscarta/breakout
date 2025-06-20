void game() {
  fill(75, 75, 155);
  noStroke();
  rect(0, 0, 800, 800);
  fill(255);
  stroke(1);
  circle(ballx, bally, balld);
  
  
  circle(brickerx,brickery,brickerd);
  if (dist(ballx, bally, brickerx, brickery) <= balld/2 + brickerd/2) {
    vx = (brickerx - ballx)/10;
    vy = (brickery - bally)/10;
  }
  brickerx = brickerx + vx;
  brickery = brickery + vy;
  if (brickery <= 0) vy = vy *-1;
  if (brickerx <= 0) vx = vx *-1;
  if (brickerx >= width) vx = vx *-1;
  
  int i = 0;
  while (i < n) {
    if (alive[i] == true) {  
    manageBrick(i);
    }
    i = i + 1;
  }
  

  if (akey == true) ballx = ballx - 5;
  if (dkey == true) ballx = ballx + 5;
  
       

    
    textSize(50);
    text(lives,700,700);
    if (brickery >= height) {
        brickerx = width/2;
        brickery = height/1.5;
      lives = lives - 1;
      vx = 0;
      vy = 2.5;
    }
    if (lives == 0) mode = GAMEOVER;
    
    
    text(score,50,700);
    if (score == 49) mode = GAMEOVER;
}

void manageBrick (int i) {
  if (y[i] == 100) fill (232,56,56);
  if (y[i] == 150) fill (232,232,56);
  if (y[i] == 200) fill (96,232,56);
  if (y[i] == 250) fill (56,133,232);
  if (y[i] == 300) fill (56,72,232);
  if (y[i] == 350) fill (170,56,232);
  if (y[i] == 400) fill (232,56,229);
       circle(x[i],y[i],bd);
    if (dist(brickerx,brickery,x[i],y[i]) < bd/2 + brickerd/2) {
      vx = (bx - x[i])/25;
      vy = (by - y[i])/25;
      alive[i] = false;
      score = score + 1;
    }

    
    
  if (ekey == true) mode = PAUSE;


}

void gameClicks() {
}
