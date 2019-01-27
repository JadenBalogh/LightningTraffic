// Generic DNA: array of 30 booleans that is the pattern

class DNA{ 
  
  boolean[] pattern = new boolean[30]; // this is the traffic light pattern
  
  DNA(){
    
    for(int i = 0;i < pattern.length;i++){
      
      // Randomly generates pattern array
      if(random(2) >= 1){
        pattern[i] = true;
      }
      else{
        pattern[i] = false;
      }
      
    }
    
  }
  
  // Crosses the DNA's based on randomization
  DNA crossover(DNA other){
  
    DNA child = new DNA();
    
    int splitPoint = (int)(random(pattern.length)); // we choose a random midpoint
    
    for(int i = 0;i<pattern.length;i++){
      if(i > splitPoint) child.pattern[i] = pattern[i];
      else child.pattern[i] = other.pattern[i];
    }
    
    return child;
    
  }
  
  DNA mutate(){
  
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
