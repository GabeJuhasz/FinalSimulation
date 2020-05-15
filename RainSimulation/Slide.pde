class Slide{
  float maxSpeed = 0.8;
  float speedInc = 0.03;
  
  float noiseInc = 0.1;
  float noiseOffset = 0;
  
  PVector force;
  
  //constroctor
 Slide(){
   force = new PVector(0,0); 
  }
  
  void update(){
    noiseOffset += noiseInc;
    float noiseValue = noise(noiseOffset);
    
    force.x += map(noiseValue, 0,1, -speedInc, speedInc);
    force.x = constrain(force.x, -maxSpeed, maxSpeed);
  }
  
}
