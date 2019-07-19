## Caching the Inverse of a Matrix

## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
obj <- NULL
setCache <- function(y) {
  x <<- y
  obj <<- NULL
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), then cacheSolve should retrieve the inverse from the cache
cacheSolve <- function() x
setCacheInverse <- function() obj <<- solve(x)  ## Returns a matrix that is the inverse of 'x'
getCacheInverse <- function() obj
list(setCache = setCache, cacheSolve = cacheSolve,
     setCacheInverse = setCacheInverse,
     getCacheInverse = getCacheInverse)
}
