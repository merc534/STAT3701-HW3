
#'Log Likelihood Estimator 
#'
#' Using a data vector and its approximate distribution, find the maximum log-likelihood estimator for a given interval.
#' 
#'Example functions for argument "fun":
#'function(theta,x)
#'  dgamma(x, shape = theta, log = TRUE)
#'
#'function(theta,x)
#'  dcauchy(x, location = theta, log = TRUE)
#'
#'function(theta,x)
#'  dbinom(x, 20, prob = 1 / (1 + exp(- theta)), log = TRUE)
#'
#'@param x  data vector 
#'@param func  function with arguments theta (the parameter) and x (the data vector) 
#'@param interval  search range(numerical vector of length 2)
#'@return The maximum likelihood estimator for the function: one numeric value
#'@export
#'@examples
#'mylogl(x = data2, func = dcauchy(x, location = theta, log = TRUE), interval = c(0,100))


mylogl <- function (x, func, interval)
{
  
  cdf <- function (theta,x) sum(func(theta,x))
  
  oout <- optimize(cdf, maximum=T, interval, x=x)
  return (oout$maximum)
}
