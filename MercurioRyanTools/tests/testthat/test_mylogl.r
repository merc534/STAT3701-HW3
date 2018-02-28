
  context("Finding MLE")
  test_that("mylogl works on cauchy distribution",{

theta <- pi             

func2 <- function(theta,x){
  sum(dcauchy(x, location = theta, log = TRUE))
}
a <- mylogl(data2, func2, interval = c(-10,10))
b <- 3.02
expect_true(abs(a-b)<.01)
            
})             
  