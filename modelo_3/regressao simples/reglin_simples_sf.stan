data {
  int n;
  vector[n] x;
  real y[n];
}
parameters {
  real b0;
  real b1;
}
model {
  y ~ normal(b0 + b1*x, 1);
}