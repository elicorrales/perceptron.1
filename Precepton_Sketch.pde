Perceptron perceptron;

Point[] points = new Point[100];


void setup() {
  size(100,100);
  for (int i=0;i<points.length;i++) {
    points[i] = new Point();
  }
  perceptron = new Perceptron();
  
  //number of runs to do , adjusting each time
  for (int i=0;i<30;i++) {
    if (doTraining()) { break; }
  }
}

boolean doTraining() {
  println("=========================================================");
  int numCorrect = 0;
  int totalNum = 0;
  for (Point p: points) {
    totalNum++;
    numCorrect += perceptron.train(p.xy,p.label);
  }
  
  println("totl: " + totalNum + ", correct: " + numCorrect);

  return (totalNum == numCorrect);
}

void draw() {

  background(255);
  stroke(0);
  line(0,0,width,height);
  for (Point p : points) {
    p.show();
    //println(p);
  }

}
