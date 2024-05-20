library(rstan)
setwd('C:/Users/gmore/OneDrive/Desktop/MCCD/stan')
options(mc.cores = parallel::detectCores())
rstan_options(auto_write = TRUE)
n <- 1000
y <- rnorm(n, 5,2)
data_stan <- list(n=n , y=y)
fit <- stan(file = 'std_nomal.stan', data = data_stan)
fit