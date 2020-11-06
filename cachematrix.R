## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mat <- x
  inv <- NULL
  get <- function() { 
    mat
  }
  set <- function(m) {
    mat <<- m
    inv <<- NULL
  }
  getInv <- function() {
    inv
  }
  setInv <- function(i) {
    inv <<- i
  }
  list(get = get, set = set, getInv = getInv, setInv = setInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  if (is.null(x$getInv())) {
    x$setInv(solve(x$get()))
  }
  x$getInv()
}
