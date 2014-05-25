## Put comments here that give an overall description of what your functions do
## The two functions below are used to cache the inverse of a matrix.

## Write a short comment describing this function
## The function makeCacheMatrix creates a list containing a function to set and get 
## the value of the matrix and the value of inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
        invert <- NULL
        set <- function(y) {
                x <<- y
                invert <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) invert <<- inverse
        getinverse <- function() invert
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
        
}


## Write a short comment describing this function
## The function below returns the inverse of the matrix

cacheSolve <- function(x, ...) {
        invert <- x$getinverse()
        if(!is.null(invert)) {
                message("getting cached data.")
                return(invert)
        }
        data <- x$get()
        invert <- solve(data)
        x$setinverse(invert)
        invert
}
