context("mstandardize")
test_that("works on a randomly generated matrix",{
  
  j <- matrix(1:30, nrow=5)
  jstand <- apply(j,2,function(x){(x - mean(x)) / sd(x)})
  
  
  expect_equivalent(mstandardize(j), jstand)
  
  
  
})