## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#creates an R object that stores a matrix and its inverse
makeCacheMatrix <- function(x = matrix()) {
  m <<- NULL #initialize m (variable to store inverse)
  
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
#populate or retrieve the inverse of a matrix from the cached
#value that is stored in makeCacheMatrix object environment
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
  
}
