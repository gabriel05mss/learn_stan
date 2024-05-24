data {
  int n;
  int y[n];
  vector[n] x;
}

parameters {
  real theta;
}

model {
  theta ~ gamma(1,1);
  y ~ poisson_log(theta);      
}
