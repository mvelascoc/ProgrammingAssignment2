## Assigment 2 from Coursera R Programming  July 2014
## Written by mvelasco (maria.velasco.c@gmail)

## Requierement: This function creates a special "matrix" 
## object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

    ma <- NULL
    set <- function(y) {
        x <<- y
        ma <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) ma <<- solve
    getinverse <- function() ma
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## Requirement: this function computes the inverse of the 
## special "matrix" returned by makeCacheMatrix above. If the 
## inverse has already been calculated (and the matrix has not 
## changed), then the cachesolve should retrieve the inverse 
## from the cache.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'


    ma <- x$getinverse()
    if(!is.null(ma)) {
        message("getting cached data")
        return(m)
    }
    
    data <- x$get()
    ma <- solve(data, ...)
    ma

}
