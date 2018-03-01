
context("Making a Scatterplot")
test_that("plottr works on data frames and imported data ",{
 
          
x <- c(1,2,3)
y <- c(1,2,3)

z <- data.frame(x,y)


try(plottr(z))


try(plottr(data1))
expect (ok = T)
})           
           
