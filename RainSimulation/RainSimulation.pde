int numDrops = 100;


ArrayList<Drop> drops;
Slide slide;

//import random;

void setup(){
  size(800,800);
  surface.setLocation(0,0);
  
  //Slide
  slide = new Slide();
  slide.update();

 //drops
  drops = new ArrayList<Drop>();
  for (int i=0;i< numDrops;i++){
    Drop d = new Drop(random(-width,width*2),random(-height,0));
    drops.add(d);
  }
  
  
}

void draw(){
// background(182);
 //gradent background
for(int i=0;i<height;i++){
  noStroke();
  fill(0,0,800-i,25);
  rect(0,i,width,5);
}

 
 //for(Drop d : drops){
   for(int i=0;i<drops.size();i++){
     Drop d =drops.get(i); 
    
    
    
    d.update(slide);
    d.display();
    slide.update();
    
    if(d.pos.y - d.radius > height){
      drops.remove(i);
      d = new Drop(random(-width,width*2),random(-height,0));
      drops.add(d);
    }
 }
 
 
 
 
 
}
