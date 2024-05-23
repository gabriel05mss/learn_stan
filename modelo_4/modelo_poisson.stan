data {
  int n;
  int y[n];
  vector[n] x;
}

parameters {
  real b0;
  real b1;
}

model {
  b0 ~ normal(0,10);
  b1 ~ normal(0,10);
  y ~ poisson_log(b0 + b1 * x);      
}
