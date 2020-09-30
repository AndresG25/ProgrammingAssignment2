## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Creates a special array object that can be cached in its reverse 
makeCacheMatrix <- function(h = matrix()) {
  #Initialize the reverse property
  j <- NULL
  
  #Form to configure the matrix
  set <- function(y) {
    h <<- y
    j <<- NULL
  }
  #Way for obtaining the matrix
  get <- function() {
  h
  }
  #Way to set the inverse of the matrix
  setinverse <- function(inverse){
    j <<- inverse
  }
  
  #Way to obtain the inverse of the matrix
  getinverse <- function(){
    j
  }
  #Returns a list of the methods
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function


  
  cacheSolve <- function(h, ...) {
    # Return a matrix that is the inverse of 'x'
    j <- h$getinverse()
    # Only returns the reverse if already configured
    if (!is.null(j)) {
      message("getting cached data")
      return(j)
    }
    #Get the Matrix
    d <- h$get()
    # Calculate the inverse 
    j <- solve(d, ...)
    # Set the inverse to the object
    h$setinverse(j)
    #Returns the inverse and print the value
    j
  }
  
  ## For testing the model, you can try with the following code: 
  # B <- matrix(c(1,2,3,4),2,2)
  # B1 <- makeCacheMatrix(B)
  # cacheSolve(B1)


