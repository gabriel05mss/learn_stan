data {
  int N; //numero de dados
  real x[N]; //vetor de dados
}

parameters {
  real mu; //media
  real sigma; //desvio padrao
}

model {
  x ~ normal(mu , sigma);
}