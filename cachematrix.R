## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Below are a pair of functions that are used to create a special object that
# stores a matrix and caches its inverse. This function creates a special matrix
# object that can cache its inverse.
makeCacheMatrix <- function(x=matrix){
        s <- NULL
        set <- function(y){
                x <<- y
                s <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse)s <<- inverse
        getInverse <- function()s
        list(set= set, get= get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

## This function computes the inverse of the special matrix created by makeCacheMatrix
#above. If the inverse has already been calculated (and the matrix has not changed),
#then it should retrieve the inverse from the cache.
cacheSolve <- function(x, ...){
        s < x$getInverse()
        if(!is.null(s)){
                message("getting cached data")
                return(s)
        }
        mat <- x$get()
        s <- solve(mat,...)
        x$setInverse(s)
        s
}
