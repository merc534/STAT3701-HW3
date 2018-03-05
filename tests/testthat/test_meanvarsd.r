context("meanvarsd")
test_that("is returned as a simple vector",{
  
  
  meanvarsd(data1)
  
  mean <- sum (data1$x * data1$p)
  
  var = sum (((data1$x-mean)^2)* data1$p)
  
  sd <- sqrt(var)
  
  expect_equivalent(c(mean,var,sd), meanvarsd(data1))
  
  
})