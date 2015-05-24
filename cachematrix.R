## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inverseOfMatrix <- NULL
  set <- function(y) {
    x <<- y
    inverseOfMatrix <<- NULL
  }
  get <- function() x
  setInverse <- function(newInverseOfMatrix) inverseOfMatrix <<- newInverseOfMatrix
  getInverse <- function() inverseOfMatrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  newInverseOfMatrix <- solve(data, ...)
  x$setInverse(newInverseOfMatrix)
  newInverseOfMatrix
}
