Spaceship spaceship = new Spaceship();
Star[] Starfield = new Star[200];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
public void setup() {
  size(400, 400);
  for (int i = 0; i < Starfield.length; i++) {
    Starfield[i] = new Star();
  }
  for (int i = 0; i < 6; i++) {
    asteroids.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  for (int i = 0; i < Starfield.length; i++) {
    Starfield[i].show();
  }
  spaceship.move();
  spaceship.show(); 
  for (int i = asteroids.size() - 1; i >= 0; i--) {
    asteroids.get(i).move();
    asteroids.get(i).show();    
    if (dist((float)spaceship.getX(), (float)spaceship.getY(), 
             (float)asteroids.get(i).getX(), 
             (float)asteroids.get(i).getY()) <= 20) {
      asteroids.remove(i);
    }
  }
  for (int i = bullets.size() - 1; i >= 0; i--) {
    bullets.get(i).move();
    bullets.get(i).show();   
    if (bullets.get(i).getX() < 0 || bullets.get(i).getX() > width ||
        bullets.get(i).getY() < 0 || bullets.get(i).getY() > height) {
      bullets.remove(i);
    }
  } 
  for (int i = asteroids.size() - 1; i >= 0; i--) {
    for (int j = bullets.size() - 1; j >= 0; j--) {
      if (dist((float)bullets.get(j).getX(), (float)bullets.get(j).getY(),
               (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY()) <= 20) {
        asteroids.remove(i);
        bullets.remove(j);
        break; 
      }
    }
  }
}
public void keyPressed() {
  if (key == 'a') {
    spaceship.turn(-20);
  }
  if (key == 'd') {
    spaceship.turn(20);
  }
  if (key == 'w') {
    spaceship.accelerate(1);
  }
  if (key == 's') {
    spaceship.accelerate(-1);
  }
  if (key == 'h') {
    spaceship.hyperspace();
  }
  if (key == ' ') { 
    bullets.add(new Bullet(spaceship));
  }
}
