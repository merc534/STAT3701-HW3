
           
context("filtr")           
test_that("filtr is a wrapper for dplyr::select()",{          
           
x = filtr(data1, 1)
y = dplyr::select(data1, 1)
           
expect_identical(x,y)           
           
           
})           
  