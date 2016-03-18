## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Fuction makeCacheMatrix will cache the inverse of x and make some mehtods avaliable.

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function () x
  setInverse <- function(i) inverse <<- i
  getInverse <- function() inverse
  list(set = set, get = get , setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
##cacheSolve is to solve cached matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  if(!is.null(i)) {
    message("getting inverse from cache")
    return(i)
  }
  x_matrix <- x$get()
  i <- solve(x_matrix)
  x$setInverse(i)
  i
}