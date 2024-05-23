library(rstan)
options(mc.cores = parallel::detectCores())
rstan_options(auto_write = TRUE)
setwd("C:/Users/gmore/OneDrive/Desktop/MCCD/stan")
n <- 1000
x <- rnorm(n,0,1)
b0 = 1
b1 = 2
y <- rpois(n, exp( b0 + b1*x ))
data_stan <- list(n=n , x=x , y=y)
fit <- stan(file = "modelo_poisson.stan" , data = data_stan)
fit
