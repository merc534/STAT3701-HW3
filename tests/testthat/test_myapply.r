context("myapply")
test_that("is equivalent to apply for matrix row summation",{
  
   fred <- matrix(1:6, nrow = 3, ncol = 2)
   
  expect_equivalent(myapply (fred, 2, sum), apply(fred,2,sum))
})
