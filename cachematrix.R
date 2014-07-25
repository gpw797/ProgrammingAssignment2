## write two functions, dividual descriptions are included that will create a temporate object  
## that is a matrix to cache its inverse. The purpose being that calculate the inverse of a matrix
## in a computation intensive event and these functions can be used to address and reduce overhead

## This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
      i <- NULL                                 #initialize the inverse
            set <- function(y) {                #method to set the matrix
            m <<- matrix
            i <<- NULL
      }
            get <- function(){                  #define get function returns the matrix
            m
      }                         
      setinverse <- function(inverse){          #define setinverse
            i <<- inverse      
      }
      getinverse <- function(){                 #returns i
            i
      }
      list(set = set, get = get,                #list is a list of the methods used
           setinverse = setinverse,
           getinverse = getinverse)
}

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
