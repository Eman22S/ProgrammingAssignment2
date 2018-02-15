## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   inv_n <- NULL
    set <- function(y) {
        x <<- y
        inv_n <<- NULL
    }
    get <- function() x

    setinverse <- function(inverse) inv_n <<- inverse
    getinverse <- function() inv_n
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}




cacheSolve <- function(x, ...) {

   inv_n <- x$getinverse()
   if(!is.null(inv_n)) {
        message("display cached data")
        return(inv_n)

    data <- x$get()
    inv_n <- solve(data, ...)
    x$setinverse(inv_n)
    inv_n

}
