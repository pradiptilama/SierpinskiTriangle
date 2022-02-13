float len = 260;

void setup(){
  size(600, 600);
  noStroke();
  fill(260);
}

void draw(){
  background(60);
  sierpinskiPattern(width/2 - len/2, height/2 + sin(PI/3) * len/2, len, 1, int(map(mouseX, 0, width, 1, 10)));
}
 void sierpinskiPattern(float x, float y, float l, int depth, int base){
   if (depth == base){
     fill(60 * base, 280/base, base);
     tri(x, y, l);
   }
   else {
     sierpinskiPattern(x, y, l/2, depth + 1, base);
     sierpinskiPattern(x + l/2, y, l/2, depth + 1, base);
     sierpinskiPattern(x + l/4, y - sin(PI/3) * l/2, l/2, depth + 1, base);
   }
 }
  void tri(float x, float y, float l){
    triangle(x, y, x + l/4, y - sin(PI/3) * l, x + l, y);
  }
  
