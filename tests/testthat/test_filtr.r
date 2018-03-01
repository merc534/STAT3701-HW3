
           
context("Filtering out one column")           
test_that("filtr is a wrapper for dplyr::select()",{          
           
x = filtr(data1, 1)
y = select(data1, 1)
           
expect_identical(x,y)           
           
           
})           
  