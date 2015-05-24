A = matrix(
c(2, 4, 3, 1, 5, 7, 9, 6,0),
nrow=3,
ncol=3,
byrow = TRUE)
source("cachematrix.R")
b <- makeCacheMatrix(A)
class(b)
A_inverse <- cacheSolve(b)

A_inverse2 <- cacheSolve(b)
all.equal (A_inverse2 %*% A , diag(nrow = nrow(A), ncol = ncol(A)))

