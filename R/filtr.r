

#' Filter by column
#`
#' Show marginal of specific column of data. Wrapper for dplyr::select()
#'
#' @param "dataset" for use, column "col" 
#' @return one specific column
#' @export

  filtr <- function(dataset, col,...) {

  marginal<-dplyr::select(dataset, col,...)

  return (marginal)

}

  


