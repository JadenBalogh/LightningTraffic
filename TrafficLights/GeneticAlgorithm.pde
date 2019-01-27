// Genetic Algorithm: the more fit the better

class GeneticAlgorithm{
  
  DNA[] population;
  
  GeneticAlgorithm(){
    
    population = new DNA[50];
    for(int i = 0;i<population.length;i++){
      population[i] = new DNA();
    }
        
  }
  
  void calculateFitness(){
    
    double totalFitness = 0;
    
    for(DNA organism : population){
      //organism.calculateFitness(); // calculates absolute fitness
      //totalFitness += organism.fitness();
    }
    
    for(DNA organism : population){
     // organism.fitness = organism.fitness / totalFitness; // calculates absolute fitness
    }
    
  }
  
  
  
}
