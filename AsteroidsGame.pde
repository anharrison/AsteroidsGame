Spaceship spaceship = new Spaceship();
Star [] Starfield = new Star[200];
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
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
  for (int i = 0; i < asteroids.size(); i++) {
    (asteroids.get(i)).move();
    (asteroids.get(i)).show();
    if (dist((float)spaceship.getX(), (float)spaceship.getY(), (float)(asteroids.get(i)).myCenterX, (float)(asteroids.get(i)).myCenterY) <= 20) {
      asteroids.remove(i);
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
}
