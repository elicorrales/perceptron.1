class Perceptron {
  float[] weights = new float[2];
  // constructor initializes weights randomly
  Perceptron() {
    for (int i=0;i<weights.length;i++) {
      weights[i] = random(-1,1);
    }    
  }
  //the main function which guesses
  int guess(float[] inputs) {
    float sum = 0;
    //sum = all (weight * input)
    for(int i=0;i<weights.length;i++) {
      sum += inputs[i]*weights[i];
    }
    // call activation function
    int output = sign(sum);
    return output;
  }
  // the activation function
  int sign(float n) {
    if (n>=0) return 1;
    else return -1;
  }
  
  int train(float[] inputs, int target) {
    int output = guess(inputs);
    int error = target - output;
    if (error==0) {
      return 1;
    } else {
      float deltaWeightX = error * inputs[0];
      float deltaWeightY = error * inputs[1];
      perceptron.weights[0] += deltaWeightX;
      perceptron.weights[1] += deltaWeightY;
      println("err:"+error+", dWX:"+deltaWeightX+", dWY:"+deltaWeightY+", pWX:"+weights[0]+", pWY:"+weights[1]);
      return 0;
    }
  }
}
