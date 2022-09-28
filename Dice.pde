
int sum = 0;
int count = 0;
int oldsum = 0;
void setup()
  {    
      size(500,500);
      noLoop();
     
      
  }
void draw()
  {  

     for(int x = 20; x< 400; x +=60){
       for(int y = 20; y < 400; y+=60){
       Die diee = new Die(x,y);
       diee.show();
       sum = sum + count;
     }
     }
    
     noStroke();
     fill(255,255,255);
     rect(250,435,250,50);
     fill(0,0,0);
     textSize(24);
     text("Sum of Dice: "+ sum,250,460);
     text("Previous Score: "+oldsum,250,480);
     
  }
void mousePressed()
  {
      redraw();
      oldsum = sum;
      sum = 0;
      
  }
  class Die //models one single dice cube
  {
      int myX,myY;
      double chance;
      Die(int x, int y) //constructor
      {
          roll();
          chance = 0;
          myX = x;
          myY = y;
          
      }
      void roll()
      {
          double chance = Math.random();
          fill(0,0,0);
          if(chance < .16){
            count = 1;
          }else if(chance < .33){
            count = 2;
          }else if(chance < .5){
            count = 3;
          }else if(chance < .66){
            count = 4;
          }else if(chance < .83){
            count = 5;
          }else{
            count = 6;
          }
          System.out.println(count);
      }
      void show()
      {   noStroke();
          fill(255,255,255);
          rect(myX,myY,50,50);
          fill(0,0,0);
          if (count == 1){
            ellipse(myX+25,myY+25,10,10);
          }
          else if (count == 2){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
          }
          else if (count == 3){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+25,myY+25,10,10);
          }
          else if (count == 4){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+10,myY+40,10,10);
            ellipse(myX+40,myY+40,10,10);
          }
          else if (count == 5){
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+10,myY+40,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+25,myY+25,10,10);
          }
          else{
            ellipse(myX+10,myY+10,10,10);
            ellipse(myX+40,myY+10,10,10);
            ellipse(myX+10,myY+40,10,10);
            ellipse(myX+40,myY+40,10,10);
            ellipse(myX+40,myY+25,10,10);
            ellipse(myX+10,myY+25,10,10);

          }
          
          
          
      }
  }
