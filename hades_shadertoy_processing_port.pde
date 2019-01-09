/*
 * "hades"
 * https://kesson.io
 * https://www.shadertoy.com/view/3sl3RX
 *
 * Porting of "Seascape" by Alexander Alekseev aka TDM
 * Original: https://www.shadertoy.com/view/Ms2SD1
 *
 * License Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
 *
 */
 
PShader landscape;

void settings() {
  fullScreen(P3D);
}

void setup() {
  landscape = loadShader("hades.glsl");
  landscape.set("iResolution", float(width), float(height));   
}

void draw() {
  background(0);
  landscape.set("iTime", millis() / 1000.0);
  shader(landscape); 
  rect(0, 0, width, height);
}
