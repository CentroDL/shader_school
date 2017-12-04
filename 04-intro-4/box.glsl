bool inBox(highp vec2 lo, highp vec2 hi, highp vec2 p) {
  return greaterThanEqual(p, low) && lessThanEqual(p, high);
}


//Do not change this line or the name of the above function
#pragma glslify: export(inBox)
