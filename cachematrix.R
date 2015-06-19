## Assignment: Lexical Scoping
## Coursera class to make functions that Cache the Inverse of a Matrix 

## makeCacheMatrix: This function creates a special "matrix" object that 
## can cache its inverse.  Output list of functions:
## set matrix, get matrix, set inverse, get inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  ## set and get matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  
  ## inverse functions
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  
  ## list of functions
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

## cacheSolve computes the inverse of the special "matrix" returned by 
## abovecacheSolve: This function computes the inverse of the special 
## "matrix" returned by makeCacheMatrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  
  ## if inverse is in cache already
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  ## else
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
