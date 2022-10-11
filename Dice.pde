 void setup()
  {
    size (550,550);  
    noLoop();
    
  }
  void draw()
  {
    background(200);
    int sum = 0;
    for (int y = 40; y<500; y += 60){
    for (int x = 40; x<500; x = x +60){
      Die bob = new Die(x,y);  
      bob.show();
      sum = sum + bob.dieRoll;
      }
    }
       fill(0);
       textSize(20);
       text("Total roll: " + sum, 200,535);
    }
    //your code here
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, dieRoll;  
    //member variable declarations here
      
      Die(int x, int y) //constructor
      {
        roll();
        myX = x;
        myY = y;
      }
      void roll()
      {
        dieRoll = ((int)(Math.random()*6)+1);
          
      }
      void show()
      {
        
        fill((int)(Math.random()*50)+185, (int)(Math.random()*50)+115,(int)(Math.random()*5));
        rect(myX, myY, 50,50);  
        fill(0);
        if (dieRoll ==1){
          ellipse(myX+25 , myY+25, 10,10);
        }
        if (dieRoll == 2){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
        }
        if (dieRoll == 3){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+25 , myY+25, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
        }
        if (dieRoll == 4){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
          ellipse(myX+13 , myY+38, 10,10);
        }
        if (dieRoll ==5){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
          ellipse(myX+13 , myY+38, 10,10);   
          ellipse(myX+25 , myY+25, 10,10);
        }
        if (dieRoll ==6){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
          ellipse(myX+13 , myY+38, 10,10);   
          ellipse(myX+13 , myY+25, 10,10);
          ellipse(myX+38 , myY+25, 10,10);
        }
      }
  }
