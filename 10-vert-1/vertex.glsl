precision highp float;

uniform float theta;
attribute vec2 position;

void main() {
  // read up on rotation matrices and figure out the geometry
  mat4 rotation_matrix = mat4(cos(-theta), -sin(-theta), 0.0, 0.0,
                  sin(-theta), cos(-theta), 0.0, 0.0,
                  0.0, 0.0, 1.0, 0.0,
                  0.0, 0.0, 0.0, 1.0);

  gl_Position = rotation_matrix * vec4(position, 0.0, 1.0);
}
