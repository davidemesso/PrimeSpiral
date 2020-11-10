int r;
int theta;
ArrayList<PVector> primes;
int count = 0;

void setup() {
  size(700, 700, P3D);
  background(0);
  
  r = 1;
  theta = r;
  primes = new ArrayList<PVector>();
  frameRate(120);
}

void draw() {
  background(0);

  // Translate the origin point to the center of the screen
  translate(width/2, height/2);
  float x = r * cos(theta);
  float y = r * sin(theta);
  if(isPrime(r))
    primes.add(new PVector(x, y));
  
  translate(0, 0, -r*2);
  for(PVector el : primes)
  {
    // Draw the ellipse at the cartesian coordinate
    ellipseMode(CENTER);
    noStroke();
    fill(200, 0, 0);
    ellipse(el.x, el.y, 10, 10);
  }
  
  r++;
  theta = r;
  //if(frameCount % 30 == 0)
  //  saveFrame(count++ + ".png");
}


boolean isPrime(int number) 
{
   int root = int(sqrt(number));
   for(int i=2; i<=root; i++) 
      if(number%i == 0)
          return false; 
   return true;
}
