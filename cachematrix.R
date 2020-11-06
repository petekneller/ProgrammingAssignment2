## This pair of functions provides a caching/memoization feature for matrices
## and their inverses.


## Creates a wrapped matrix
## 
## The matrix wrapped by the returned object can be accessed and updated via
## the `get` and `set` elements. Other elements of the object should be 
## considered internal and not used directly.

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


## Solves for the inverse of the provided (wrapped) matrix
##
## Should the inverse have been previously calculated and no change to the 
## wrapped matrix made then a cached copy of the inverse will be returned,
## improving performance for large matrices

cacheSolve <- function(x, ...) {
  if (is.null(x$getInv())) {
    x$setInv(solve(x$get()))
  }
  x$getInv()
}
