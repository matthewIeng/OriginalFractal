void setup() {
  size(800, 600); 
}

void draw() {
  background(255); // Set background to white
  stroke(0); // Set stroke color for shapes
  drawCircle(width / 2, height / 2, 300, 0); 
}

void drawCircle(float x, float y, float diameter, int depth) {
  // Set random fill color
  fill(random(255), random(255), random(255));
  ellipse(x, y, diameter, diameter); 
  
  if (depth < 5) {
    float side = diameter / sqrt(2); 
    
    float offsetX = side / 2;
    float offsetY = side / 2;
    
    drawSquare(x, y, side); 
    
    
    drawCircle(x - offsetX, y - offsetY, diameter / 2, depth + 1);
    drawCircle(x + offsetX, y - offsetY, diameter / 2, depth + 1);
    drawCircle(x + offsetX, y + offsetY, diameter / 2, depth + 1);
    drawCircle(x - offsetX, y + offsetY, diameter / 2, depth + 1);
  }
}

void drawSquare(float x, float y, float side) {
 
  fill(random(255), random(255), random(255));

  float cornerX = x - side / 2;
  float cornerY = y - side / 2;
  
  rect(cornerX, cornerY, side, side);
}
