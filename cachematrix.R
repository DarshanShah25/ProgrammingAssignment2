## This is the funtion is to chache the inverse of the matrix and then retrieve the inverse through the chache memory
## functions do

## this funtion is to store the inverse in the chache memory

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL 
  }
  get <- function() x
  setinverse <- function(inverse) m<<-inverse
  getinverse <- function() m
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## this function is to retrieve the chache memory

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)){
      message("Getting the chache memory")
      return(m)
    }
    data <- x$get()
    x$setinverse
    m
}
