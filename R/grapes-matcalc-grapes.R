#' Calculator for  X^T A^{-1} X
#'
#' Working on a matrix, A, and a numerical vector X, performs the calculation in the title line. 
#' 
#' @name %matcalc%
#' @usage A \%matcalc\% X
#' @param A matrix (must be invertible)
#' @param X numerical vector
#'
#' @return calculated matrix
#'
#' @export
#' @examples
#' 
#' attach(data4)
#' a `%matcalc%` x


`%matcalc%` <- function(A, X){
  
  stopifnot (is.numeric(A) & is.numeric(X))
  stopifnot (is.finite(A) & is.finite(X))
  stopifnot (nrow(A) == ncol(X))
  stopifnot (nrow(A) == ncol (A))
  
  
  answer1 = solve(A, X)
  
  answer2 = answer1 %*% t(X)
  
  return (t(answer2))
}
