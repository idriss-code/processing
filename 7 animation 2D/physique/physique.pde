Balle balle;

Pallet lp;
Pallet rp;

void setup() {
  size(800, 600);
  newGame();

  int pw = 20;
  int ph = 100;

  lp = new Pallet(0, 0, pw, ph);
  rp = new Pallet(width - pw, 0, pw, ph);
}

void draw() {
  background(0);
  balle.update();

  if (balle.x < 0) {
    gameOver("right");
  } else if (balle.x > width) {
    gameOver("left");
  }

  if (lp.collision(balle)) {
    balle.vx = -balle.vx;
  }

  if (rp.collision(balle)) {
    balle.vx = -balle.vx;
  }

  if (balle.vx == 0 && balle.vy == 0) {
    if (balle.x < width/2) {
      gameOver("right");
    } else {
      gameOver("left");
    }
  }

  balle.draw();
  lp.draw();
  rp.draw();
}

void keyPressed()
{
  if (key == 'q') {
    lp.y+=10;
  }

  if (key == 'a') {
    lp.y-=10;
  }

  if (key == 'm') {
    rp.y+=10;
  }

  if (key == 'p') {
    rp.y-=10;
  }
}

void gameOver(String winner) {
  println(winner + " win");
  newGame();
}

void newGame() {
  int vx = int(random(5, 10));
  int[] directions = {-1, 1};
  int dir = directions[int(random(directions.length))];
  vx = vx * dir;
  int vy = int(random(-10, 10));

  balle = new Balle(width/2, height/2, vx, vy);
}
