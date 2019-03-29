class Point {
  float x;
  float y;
  float[] xy = new float[2];
  int label;
  
  Point() {
    x = random(width);
    y = random(height);
    if (x>y) {
      label = 1;
    } else {
      label = -1;
    }
    xy[0] = x;
    xy[1] = y;
  }
  
  void show() {
    stroke(0);
    if (label==1) {
      fill(255);
    } else {
      fill(0);
    }
    ellipse(x,y,8,8);
  }
 
  String toString() {
    return "("+xy[0]+","+xy[1]+","+label+")";
  }
}
