mat2 matrixPower(highp mat2 m, int n) {
  if(n == 0) {
    return mat2(1.0);
  }

  highp mat2 res = mat2(1.0) * m;

  for(int i = 1; i < 16; i++){
    if(i == n){
      break;
    }
    res *= m;
  }

  return res;
}

//Do not change this line or the name of the above function
#pragma glslify: export(matrixPower)