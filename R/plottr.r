
#'Plot for dataset data1
#'
#'Constructs a scatterplot of the first two columns of a numerical data table.
#'
#'@param two-column numerical "dataset" to be plotted.
#'@return plot of data
#'@export

plottr<-function(dataset,...){
newplot<-ggplot2::ggplot(data=dataset, ggplot2::aes(x=select(dataset, 1), y=select(dataset, 2))) + ggplot2::geom_point(...)
newplot
return(newplot)
}


