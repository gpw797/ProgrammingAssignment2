## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
      m <- x$getinverse()                       #function returns an inverse matrix of x
      if(!is.null(m)) {
            message("getting cached data")      #only calculate the inverse if it previously set print message if is T
            return(m)
      }
      data <- x$get()                           #get the matrix
      m <- solve(data)                          #calculate the inverse of the matrix
      x$setinverse(m)                           #set inverse
      m                                         #function returns the matrix
}