
int startX = 150;
int startY = 0;
int endX = 0;
int endY = 150;
int bolt = 250;
int stars = 0;
void setup()
{
  size(300,300);
  background(0, 0, 0);
  frameRate(1);
}
void draw()
{
  fill(66, 50, 50);
  noStroke();
  strokeWeight(2);
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255), 200);
  while (endY < 300) {
    //lightning bolt
    endX = startX + (int)(Math.random() * 19) - 9;
    endY = startY + (int)(Math.random() * 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
    for (int i = 0; i < 100; i++)
      ellipse((int)(Math.random() * 301), (int)(Math.random() * 110), 0.1, 0.1);
    ellipse(10, 10, 50, 50);
    strokeWeight(3);
    fill(0, 0, 0, 40);
    rect(-10, -10, 320, 320);
}
    
    
void mousePressed()
{
  startX = mouseX;
  startY = 0;
  endX = 0;
  endY = 150;
  draw();
}
