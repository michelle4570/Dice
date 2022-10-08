 void setup()
  {
    size (550,550);  
    noLoop();
    
  }
  void draw()
  {
    for (int y = 40; y<500; y += 60){
    for (int x = 40; x<500; x = x +60){ 
      Die bob = new Die(x , y);  
      bob.show();
    }
    }
    //your code here
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, flick;  
    //member variable declarations here
      
      Die(int x, int y) //constructor
      {
        roll();
        myX = x;
        myY = y;
      }
      void roll()
      {
        flick = ((int)(Math.random()*6)+1);
          
      }
      void show()
      {
        
        fill((int)(Math.random()*50)+185, (int)(Math.random()*50)+115,(int)(Math.random()*5));
        rect(myX, myY, 50,50);  
        fill(0);
        if (flick ==1){
          ellipse(myX+25 , myY+25, 10,10);
        }
        if (flick == 2){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
        }
        if (flick == 3){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+25 , myY+25, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
        }
        if (flick == 4){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
          ellipse(myX+13 , myY+38, 10,10);
        }
        if (flick ==5){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
          ellipse(myX+13 , myY+38, 10,10);   
          ellipse(myX+25 , myY+25, 10,10);
        }
        if (flick ==6){
          ellipse(myX+13 , myY+13, 10,10);
          ellipse(myX+38 , myY+13, 10,10);
          ellipse(myX+38 , myY+38, 10,10);
          ellipse(myX+13 , myY+38, 10,10);   
          ellipse(myX+13 , myY+25, 10,10);
          ellipse(myX+38 , myY+25, 10,10);
        }
      }
  }
