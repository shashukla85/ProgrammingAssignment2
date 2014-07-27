## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	mi <- NULL
      set <- function(y) {
                x <<- y
                mi <<- NULL
      }
      get <- function() x
	setinverse <- function() mi <<- solve(x)

      getinverse <- function() mi
      list(set = set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)

}


## Write a short comment describing this function
cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
      if(!is.null(i)) {
         message("getting cached data")
         return(i)
        }
      #data <- x$get()
      #i <- solve(data, ...)
      i <- x$setinverse()
      i
}
