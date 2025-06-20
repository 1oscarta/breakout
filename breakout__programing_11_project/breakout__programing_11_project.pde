
int mode;
final int INTRO     = 1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;

int [] x,y;


int i,n;
int tempx,tempy;

float ballx,bally,balld, brickerx,brickery,brickerd, bx,by,bd ,vx,vy;

boolean akey,dkey,ekey;

boolean[] alive;

void setup() {
  size(800, 800);
  mode = INTRO; //GAME; 
  ballx = width/2;
  bally = height;
  balld = 175;
  
  brickerx = width/2;
  brickery = height/1.5;
  brickerd = 50;
  
  bd = 37.5;
  
  vx = 0;
  vy = 2.5;
  
  akey = dkey = false;
  
  n = 49;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  
  tempx = 100;
  tempy = 100;
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 50;
    }
    i++;
  }
    
  
  
  
} 

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

void mouseReleased () {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == 'e' || key =='E') {
    ekey = true;
    if (mode == PAUSE) {
    mode = GAME;
    ekey = false;
  }
  }
}

void keyReleased() {
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (mode == GAME) {
    mode = GAME;
    ekey = false;
  }
  }
