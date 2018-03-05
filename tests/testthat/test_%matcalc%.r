context("%matcalc%")
test_that("works for data4",{
  
  ans1 <- data4[[1]] %matcalc% data4[[2]]
  
  ans2 <- t(solve(data4[[1]],data4[[2]]) %*% t(data4[[2]]))
  
  expect_equivalent(ans1,ans2)
  
})