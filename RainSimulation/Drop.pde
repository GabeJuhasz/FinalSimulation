class Drop{
  //vars
  PVector pos;
  PVector speed;
  int y;
  //int radius;
  //int radius2;
  int changeAmount = 10;
  int changevalue = int(random(-changeAmount, changeAmount));
  
  int radius = int(random(20,80));
  int radius2 = int(random(radius,radius + changevalue));
  int weight = radius/10;
  PVector forceMod = new PVector (0,weight/2);
  
  int blueness = 175 + radius;
  int greenness = blueness/2;
  int saturation = 55+radius;
  
  //constructor
  Drop(float x,float y){
   pos = new PVector(x,y);
   
   //if(radius != weight){
   speed = new PVector(0, weight);
  // }
  }
  
  //methods
  void update(Slide s){
    
    //???????????????????????????????????????????????????????????????????????????????????????????????????????
    //why does this not work? It should change the amount of force aplied to a drop depending on it's weight.
    //The operator * is undefined for the argument type(s) PVector, int
    //pos.add(s.force * forceMod);
    //???????????????????????????????????????????????????????????????????????????????????????????????????????
    //PVector.mult(a, b)
    //PVector.mult(s.force, Drop.forceMod);
    pos.add(s.force);
    pos.add(speed);
    
  }
  
  void display(){
    pushMatrix();
    translate(pos.x,pos.y);
    //(r,g,b,transparency
    fill(0,greenness,blueness,saturation);
    noStroke();
    ellipse(0,0,radius,radius2);
    popMatrix();
    
  }
  
  void keypressed(){
    if(key == 'n'){
      setup();
    }
  }
  
}
