## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Below are a pair of functions that are used to create a special object that
# stores a matrix and caches its inverse. This function creates a special matrix
# object that can cache its inverse.
makeCacheMatrix <- function(x=matrix){
        j <- NULL
        set <- function(y){
                x <<- y
                j <<- NULL
        }
        get <- function()x
        setInverse <- function(inverse)j <<- inverse
        getInverse <- function()j
        list(set= set, get= get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

## This function computes the inverse of the special matrix created by makeCacheMatrix
#above. If the inverse has already been calculated (and the matrix has not changed),
#then it should retrieve the inverse from the cache.
cacheSolve <- function(x, ...){
        j < x$getInverse()
        if(!is.null(j)){
                message("getting cached data")
                return(j)
        }
        mat <- x$get()
        j <- solve(mat,...)
        x$setInverse(j)
        j
}
