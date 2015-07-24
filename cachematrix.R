## In this script the two functions are used to cache a matrix 
##and compute its inverse.At the end I enclosed an invertible matrix and 
##the commands needed to get its inverse with the two functions.


##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(mx = matrix()) {
  inverse <- NULL
  set <- function(x) {
    mx <<- x
    inverse <<- NULL;
  }
  get <- function() return(mx)
  setinv <- function(inv) inverse <<- inv
  getinv <- function() (inverse)
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## This function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(mx, ...) {
  inverse <- mx$getinv()
  if(!is.null(inverse)) {
    message("getting cached data")
    inverse
  }
  data <- mx$get()
  inverse <- solve(data, ...)
  mx$setinv(inverse)
  inverse
## In this script the two functions are used to cache a matrix 
##and compute its inverse.At the end I enclosed an invertible matrix and 
##the commands needed to get its inverse with the two functions.


##This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(mx = matrix()) {
  inverse <- NULL
  set <- function(x) {
    mx <<- x
    inverse <<- NULL;
  }
  get <- function() return(mx)
  setinv <- function(inv) inverse <<- inv
  getinv <- function() (inverse)
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## This function computes the inverse of the special
## "matrix" returned by `makeCacheMatrix` above. If the inverse has
## already been calculated (and the matrix has not changed), then
## `cacheSolve` should retrieve the inverse from the cache.


cacheSolve <- function(mx, ...) {
  inverse <- mx$getinv()
  if(!is.null(inverse)) {
    message("getting cached data")
    inverse
  }
  data <- mx$get()
  inverse <- solve(data, ...)
  mx$setinv(inverse)
  inverse
}



#For testing the functions
#mx<-matrix(c(1,1,1,3, 4, 3, 3,3,4) ,3 ,3)

#amatrix<-makeCacheMatrix(mx)
#amatrix$get()
#cacheSolve(amatrix)

#result 
#> cacheSolve(amatrix)
#[,1] [,2] [,3]
#[1,]    7   -3   -3
#[2,]   -1    1    0
#[3,]   -1    0    1



 

