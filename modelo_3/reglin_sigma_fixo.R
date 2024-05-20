library(rstan)
setwd('C:/Users/gmore/OneDrive/Desktop/MCCD/stan')
options(mc.cores = parallel::detectCores())
rstan_options(auto_write = TRUE)
n <- 1000
x1 <- rnorm(n , 4 , 3)
x2 <- rnorm(n , 5 , 4)
erro <- rnorm(n , 0 , 1)
b0 = 1
b1 = 5
b2 = 3
y_sem_erro <- b0 + b1 * x1 + b2 * x2
y <- y_sem_erro + erro
data_stan <- list(n=n , x1=x1 , x2=x2 , y = y)
fit <- stan(file = 'reglin_sigma_fixo.stan', data = data_stan)
fit

