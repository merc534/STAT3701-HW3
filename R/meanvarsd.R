


#' Random Variable Statistic Calculator.
#'
#' Given a discrete random variable distribution, return the mean, variance and standard deviation.
#'
#'
#' @param d dataframe with two columns, x and p. x represents the value of the RV. p represents the probability corresponding to that value.
#' 
#' @return vector of length 3 (mean, var, sd) 
#'
#' @export
#'
#'
#' @examples 
#' 
#' x <- c(1,5,6)
#' p <- c(.2,.2,.6)
#' v <- data.frame (x,p)
#' meanvarsd(v)
#' 
#' 






meanvarsd <- function(d){
  
  stopifnot (is.data.frame(d) == T)   #must be a dataframe
  stopifnot (length(d) == 2)          #must have two columns  
  
  stopifnot (is.numeric (d$x))         #only numbers
  stopifnot (is.numeric (d$p))
  
  
  
  stopifnot (is.finite (d$x))          #only finite numbers
  stopifnot (is.finite (d$p))
  
  stopifnot (all.equal (sum(d$p),1)) #p column must sum to 1
  
  
  n <- length(d$x)                  #rest the same as problem 4.
  
  mean <- sum (d$x * d$p)
  
  
  
  var = sum (((d$x-mean)^2)* d$p)
  
  sd <- sqrt(var)
  
  
  statlist <- c(mean, var, sd)
  return (statlist)
  
  
}