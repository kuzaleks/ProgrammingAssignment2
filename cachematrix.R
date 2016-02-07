## Put comments here that give an overall description of what your
## functions do

## the function returns 

makeCacheMatrix <- function(x = matrix()) {
    rx <- NULL
    set <- function(y) {x <<- y; rx <<- NULL}
    get <- function() x
    setrx <- function(revx) rx <<- revx
    getrx <- function() rx
    list(set = set, get = get, setrx = setrx, getrx = getrx)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    rx <- x$getrx()
    if(!is.null(rx)) {
        message("getting cached data")
        return(rx)
    }
    data <- x$get()
    rx <- solve(data)
    x$setrx(rx)
    rx
}
