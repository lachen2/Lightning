int startX = 150;
int startY = 0;
int endX = 0;
int endY = 150;
int bolts = 0;
void setup()
{
  size(300,300);
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  strokeWeight(3);
  background(0, 0, 0);
  frameRate(1);
}
void draw()
{
  fill(66, 50, 50);
  noStroke();
  strokeWeight(3);
  stroke((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  while (endY < 300) {
    //lightning bolt
    endX = startX + (int)(Math.random() * 19) - 9;
    endY = startY + (int)(Math.random() * 10);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
 // bolts ++;
 // if (bolts > 5)
    
void mousePressed()
{
  startX = (int)(Math.random() * 250) + 25;
  startY = 0;
  endX = 0;
  endY = 150;
  draw();
}
