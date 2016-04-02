void setup()
{
  size(500, 500);
  background(255, 0, 0);
  frameRate(60);
}
void draw()
{
  stroke(0);
  textAlign(CENTER);
  textSize(30);
  fill(255);
  text("Duck Talk!", width/2, height/2-150);
  rectMode(CENTER);
  rect(width/2, height/2-50, 150, 150);
  stroke(0);
  textSize(10);
  fill(0);
  text("Duck Goes Here", width/2, height/2-50);
  fill(255);
  rect(width/2, 450, 450, 25);
  textAlign(LEFT);
  fill(0);
  textSize(15);
  text("You: I love cars.", 25, 455);
  text("Duck: How are you today?\nYou: Fine\nDuck: What do you like?\nYou: Asians\nDuck: What else?", 25, 300);
  fill(0);
  stroke(255);
  rect(400, 450, 50, 25);
  textSize(10);
  fill(255);
  textAlign(CENTER);
  text("Enter", 400, 455);
  stroke(255);
  fill(0);
  rect(450, 450, 50, 25);
  fill(255);
  text("Talk!", 450, 455);
}