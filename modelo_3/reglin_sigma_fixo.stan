data {
    int n;
    vector[n] x1;
    vector[n] x2;
    real y[n];
  }

parameters {
  real b0;
  real b1;
  real b2;
}

model {
  y ~ normal(b0 + b1 * x1 + b2 * x2 , 1);
}