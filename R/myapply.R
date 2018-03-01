#' myapply
#'
#' Simplified version of apply for STAT 3701
#'
#' @param X matrix
#' @param MARGIN is either 1 or 2, for rows or columns
#' @param FUN is some function to be applied.
#'
#' @return Answer in simplest form - matrix or array.
#' @export
#' @examples 
#' 
#' fred <- matrix(1:6, nrow = 3, ncol = 2)
#' 
#' myapply (fred, 2, sum)
#' myapply (fred, 1, sum)
#' 



myapply <- function(X, MARGIN, FUN, ...){
  
  stopifnot (MARGIN == 2 || MARGIN == 1)
  stopifnot (length(dim(X))==2)
  FUN <- match.fun(FUN)
  
  
  
  if (MARGIN == 1){
    
    ANS <- list()                    
    
    
    for (i in row(X)){
      
      ANS[i] <- FUN (X[i,],...)
    }
    
  }    
  else if (MARGIN == 2){
    
    ANS <- list()                     
    
    for (i in col(X)){
      
      ANS[i]  <-  FUN (X[,i],...)
      
    }
  }
  
  return (simplify2array(ANS))
}
