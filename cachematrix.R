## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  makeCacheMatrix <- function(x = matrix()) { 
#set inverse to null to begin 
    inv <- NULL                           
    set <- function(y) {
      x <<- y                             
      inv <<- NULL                        
#set up get function
    get <- function() x                     
    setinverse <- function(inverse) inv <<- inverse  
    getinverse <- function() inv                    
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
    }
  }
  


## Write a short comment describing this function
#cache the inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
#call inverse
        inv
}

