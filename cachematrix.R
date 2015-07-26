## The code creates an inverse of the matrix by:
## 1. First checking if the inverse is already available in matrix. If yes, it creates value from cache
## 2. If inverse not found in cache, it calcutates the inverse

## In order to do so, function uses two functions: a) makeCacheMatrix and b) cacheSolve
## The descriptions of both the functions can be found below

## This function calcultes the inverse of matrix and stores in cache
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    setinverse <- function(inv) i <<- inv
    getinverse <- function() i
    get <- function() x
    list(get = get, setinverse = setinverse, getinverse = getinverse)
}

## This function first checks cache to see if the inverse of the matrix is available
## If yes, it returns from Cache. If not, it calculates the inverse

cacheSolve <- function(x, ...) {
    y <- x$getinverse()
    if(!is.null(y)){
        message("getting cached data")
        return(y)
    }
    getdata <- x$get()
    i <- solve(getdata)
    x$setinverse(i)
    i
}
