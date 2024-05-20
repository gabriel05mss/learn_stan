data {
  int n;
  real y[n];
}

parameters {
  real mu;
  real <lower = 0> sigma;
}

model {
  y ~ normal( mu , sigma );
sigma ~ cauchy( 0 , 2.5);
}