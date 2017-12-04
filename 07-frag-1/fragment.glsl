precision highp float;

#define CIRCLE_COLOR    vec4(1.0, 0.4313, 0.3411, 1.0)
#define OUTSIDE_COLOR   vec4(0.3804, 0.7647, 1.0, 1.0)
#define ORIGIN          vec2(256.5, 256.5)
#define RADIUS          128.0

bool inCircle(vec2 point){
  point -= ORIGIN;
  return length(point) <= RADIUS;
}

void main() {
  if( inCircle(gl_FragCoord.xy) ) {
    gl_FragColor = CIRCLE_COLOR;
  } else {
    gl_FragColor = OUTSIDE_COLOR;
  }
}
