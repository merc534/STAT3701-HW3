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
#' mstandardize(data3)
#'




mstandardize <- function (M){
  
  standardize <- function(x){(x - mean(x)) / sd(x)}
  
  stopifnot(nrow(M)>1)
  
  apply (M, 2, standardize)
}