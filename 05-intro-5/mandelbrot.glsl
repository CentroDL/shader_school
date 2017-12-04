vec2 build_mandelbrot(vec2 z, vec2 c) {
  return vec2(z.x * z.x - z.y * z.y, 2.0 * z.x * z.y) + c;
}

bool mandelbrot(highp vec2 c) {
  vec2 z   = vec2(0.0);
  vec2 mset = z;

  for(int i=0; i < 100; i++){
    mset = build_mandelbrot(mset, c);
  }

  return length(mset) < 2.0;
}

//Do not change this line or the name of the above function
#pragma glslify: export(mandelbrot)
