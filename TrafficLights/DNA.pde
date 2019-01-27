// Generic DNA: array of 30 booleans that is the pattern

class DNA { 
  boolean[] pattern = new boolean[100]; // this is the traffic light pattern
  
  DNA() {
    for(int i = 0;i < pattern.length;i++) {
      // Randomly generates pattern array
      pattern[i] = random(0, 2) >= 1;
    }
    
  }
  
  DNA mutate() {
    
    /* This function changes at least one position of the DNA
    with a probability of roughly 3%. The Math behind it is not linear
    i.e. don't change the rndValueForPercent without doing a proper calculation
    */
    
    int rndValueForPercent = 1011; // this was 
    DNA newDna = new DNA();
      
    for(int i = 0;i<pattern.length;i++){
      if(random(rndValueForPercent) <= 1){
        // this value was mutated
        newDna.pattern[i] = !pattern[i];
      }
      else{
        // this value was NOT mutated
        newDna.pattern[i] = pattern[i];
      }
    }
  
  return newDna;
    
  }
   
}
