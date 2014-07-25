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