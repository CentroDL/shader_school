precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)

uniform sampler2D texture;
uniform vec2 screenSize;

void main() {
  vec2 coord   = gl_FragCoord.xy / screenSize;
  vec4 texture = texture2D(texture, coord);

  float tmp = texture.r;
  texture.r = texture.b;
  texture.b = tmp;

  gl_FragColor = texture;
}
