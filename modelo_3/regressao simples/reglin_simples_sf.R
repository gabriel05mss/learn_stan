library(rstan)
options(mc.cores = parallel::detectCores())
rstan_options(auto_write = TRUE)
setwd("C:/Users/gmore/OneDrive/Desktop/MCCD/stan")
n=1000
x <- rnorm(n,3,2)
b0 = 9
b1 = 7
y_sem_erro <- b0 + b1*x
erro <- rnorm(n , 0, 1)
y <- y_sem_erro + erro 
 data_stan = list(n=n , x=x , y=y)
fit <- stan(file = "reglin_simples_sf.stan" , data = data_stan)
fit