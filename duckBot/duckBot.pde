String currentString;
char[] letters = new char[0];
String[] History;
void setup()
{
  size(500, 500);
  background(255, 0, 0);
  frameRate(60);
  currentString = "";
  History = new String[6];
  for (int i = 0; i < History.length; i++)
  {
    History[i] = "";
  }
}
void draw()
{
  background(255, 0, 0);
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
  text("You: ", 25, 455);
  text(currentString, 60, 455);
  // text("Duck: How are you today?\nYou: Fine\nDuck: What do you like?\nYou: Asians\nDuck: What else?", 25, 300);
  for (int i = 0; i < History.length; i++)
  {
    if (History[i] == "")
    {
      text(History[i], 25, 300+(i*23));
    } else
    {
      text("You: "  + History[i], 25, 300+(i*23));
    }
  }
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
  println(History[4]);
}

void keyPressed()
{
  if (key != CODED && key != BACKSPACE && key != ENTER)
  {
    letters = append(letters, key);
    currentString = "";
    for (int i = 0; i < letters.length; i++)
    {
      currentString = currentString + letters[i];
    }
  } else if (key == BACKSPACE && letters.length > 0)
  {
    letters = shorten(letters);
    currentString = "";
    for (int i = 0; i < letters.length; i++)
    {
      currentString = currentString + letters[i];
    }
  } else if (key == ENTER && letters.length > 0)
  {
    History[0] = History[1];
    History [1] = History[2];
    History[2] = History[3];
    History[3] = History[4];
    History[4] = History[5];
    History[5] =  currentString;
    currentString = "";
    letters = new char[0];
  }
}