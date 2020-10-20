//declare bacteria variables here
Bacteria [] Colony = new Bacteria[55];
int Bias = 1;
void setup()   
{     
  //initialize bacteria variables here   
  size(500, 500);
  background(50);
  for (int i = 0; i<Colony.length; i++) {
    Colony[i] = new Bacteria();
  }
}   
void draw()   
{    
  //move and show the bacteria 
  background(50);
  if (Bias == 1) {
  for (int i = 0; i<Colony.length; i++) {
    Colony[i].move1();
    Colony[i].show();
    }
  }
  else {
   for (int i = 0; i<Colony.length; i++) {
    Colony[i].move();
    Colony[i].show();
  }
  }
}  
void mousePressed(){
   for (int i = 0; i<Colony.length; i++) {
    Colony[i] = new Bacteria();
    Bias = Bias * -1;
  }
redraw();
}


class Bacteria    
{     
  int myX;
  int myY;
  int mySize;
  int  rgb;
  //lots of java! 
  Bacteria() {
    myX = (int)((Math.random()*15)-7)+250;
    myY = (int)((Math.random()*15)-7)+250;
    mySize = 25;
    rgb = color((int)(Math.random()*225), (int)(Math.random()*225), (int)(Math.random()*225));
  }

  void move() {
    //myX = myX + (int)(Math.random()*11)-5;
    //myY = myY + (int)(Math.random()*11)-5;
    
    if (myX < mouseX) {
    myX = myX + (int)(Math.random()*5);
    } else {
     myX = myX + (int)(Math.random()*5)-4;
    }
    
    if (myY < mouseY) {
    myY = myY + (int)(Math.random()*5);
    } else {
     myY = myY + (int)(Math.random()*5)-4;
    }
    
  }
  
  void move1(){
  myX = myX + (int)(Math.random()*11)-5;
  myY = myY + (int)(Math.random()*11)-5;
  }

  void show() {
    fill(rgb);
    ellipse(myX, myY, mySize, mySize);
  }
}    
