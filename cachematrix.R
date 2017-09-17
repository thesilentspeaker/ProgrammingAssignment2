## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv_val <- NULL
  set <- function(y) {
    x <<- y
    inv_val <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv_val <<- inverse
  getmean <- function() inv_val
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv_val <- x$getinverse()
  if(!is.null(inv_val)) {
    message("getting cached data")
    return(inv_val)
  }
  data <- x$get()
  inv_val <- solve(data, ...)
  x$setinverse(inv_val)
  inv_val
  
  
  ## Return a matrix that is the inverse of 'x'
}
