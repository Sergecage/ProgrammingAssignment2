## Put comments here that give an overall description of what your
## functions do 
## functions  create a special object that stores a matrix and caches its inverse.
## The first function, makeCacheMatrix creates a special “matrix”, which is really a list 
## containing a function to:
## set the value of the matrix, get the value of the matrix,
## set the value of the inverse, get the value of the inverse


## Write a short comment describing this function
## function computes the inverse of the special “matrix” returned by makeCacheMatrix

makeCacheMatrix <- function(x = matrix()) {
m<- NULL
set <- function(y) {
  x <<- y
  m <<- NULL
}
get <- function() x
setinverse <- function(inverse) m <<- inverse
getinverse <- function() m
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## Write a short comment describing this function
## function cacheSolve  retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get ()
  m <- solve(data,...)
  x$setinverse(m)
}

        ## Return a matrix that is the inverse of 'x'
## Test
A <- matrix(c(1, 2, 3, 4),2,2)
A1 <- makecacheMatrix(A)
cacheSolve(A1)
cacheSolve(A1)

