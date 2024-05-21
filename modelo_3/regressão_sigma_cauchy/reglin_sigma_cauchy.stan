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
  real <lower = 0> sigma;
}

model {
  y ~ normal(b0 + b1 * x1 + b2 * x2 , sigma);
  sigma ~ cauchy(0 , 2.5);
}

