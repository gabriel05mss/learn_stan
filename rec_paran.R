library(rstan)
setwd('C:/Users/gmore/OneDrive/Desktop/MCCD/stan')

options(mc.cores = parallel::detectCores())
rstan_options(auto_write = TRUE)
x = rnorm(1000 ,0 , 1)
stan_data <- list(N=1000, x=x)
fit <- stan(file= "rec_paran.stan"  , data = stan_data)
fit
