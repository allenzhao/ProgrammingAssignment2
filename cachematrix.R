## Put comments here that give an overall description of what your
## functions do

## These two functions provide a way to cahce a matrix's inverse to make 
## it quicker to load.

## Write a short comment describing this function
## Fuction makeCacheMatrix will cache the inverse of x and make some mehtods avaliable.


##This function provides some useful methods, to set the matrix and to get the matrix,
## to set the inverse in cache and to get the inverse from cache, and a list method to get the list.

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
##cacheSolve is to slove a matrix's inverse. If it is in cache, then we can just get it from cache. 
## If it's not in the cache, we can just cache it.
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