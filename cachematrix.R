## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat <- x
  get <- function() { 
    mat
  }
  set <- function(m) {
    mat <<- m
  }
  list(get = get, set = set)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  solve(x$get())
}
