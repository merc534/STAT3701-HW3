#' Matrix Standardization
#'
#' Standardize the columns of a matrix. 
#'
#' @param M matrix with multiple rows.
#' 
#' @return A new, standardized matrix.
#'
#' @export
#' @examples
#' 
#' func2(data3)
#'




func2 <- function (M){
  
  standardize <- function(x){(x - mean(x)) / sd(x)}
  
  stopifnot(nrow(M)>1)
  
  apply (M, 2, standardize)
}