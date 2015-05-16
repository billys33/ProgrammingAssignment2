## Put comments here that give an overall description of what your
## functions do



## Write a short comment describing this function

makeCacheMatrix <- function(objMatrix = matrix()) {
  inverseMatrix <- NULL
  
  set <- function(setMatrix){
    objMatrix <<- setMatrix
    inverseMatrix <--NULL
  }
  
  get <- function(){
    objMatrix
  }
  
  setInverse <- function(inverse){
    inverseMatrix<<-inverse
  }
  
  getInverse <-function(){
    inverseMatrix
  }
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(cachedMatrix) {
  inverse <- cachedMatrix$getInverse()
  if(!is.null(inverse)){
    message("getting cached data")
    return(inverse)
  }
  M <- cachedMatrix$get()
  inverse <- solve(M)
  cachedMatrix$setInverse(inverse)
  inverse
  ## Return a matrix that is the inverse of M
}
