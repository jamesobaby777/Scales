void setup() {
  size(1500, 1500);
  noLoop();
}

void draw() {
  background(0);  // Black background to enhance glowing effect
  
  // Loop to create rows and columns of scales
  for (int y = 100; y < 1500; y += 100) {  // Adjust vertical spacing
    for (int x = 100; x < 1500; x += 100) {  // Adjust horizontal spacing
      scaleShape(x, y);
    }
  }
}

void scaleShape(int x, int y) {
  // Random colors for the glowing effect
  float r = random(100, 255);
  float g = random(50, 200);
  float b = random(150, 255);
  fill(r, g, b, 180);  // Semi-transparent fill for glow effect
  
  // Shape of the scale (hexagon or diamond)
  beginShape();
  vertex(x, y - 50);  // Top point
  vertex(x + 50, y);  // Right point
  vertex(x, y + 50);  // Bottom point
  vertex(x - 50, y);  // Left point
  endShape(CLOSE);
  
  // Optional glow or outline
  stroke(255, 255, 255, 50);  // Soft white outline
  strokeWeight(2);
  noFill();
  ellipse(x, y, 120, 120);  // Glowing circle around the scale
  noStroke();
}
