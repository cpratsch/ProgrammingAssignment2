## makeCacheMatrix caches a matrix with the set and get functins.   
## cacheSolve returns a matrix with the inverse values

## Stores the provided matrix into cache and creates the callable functions
## get and set. 

makeCacheMatrix <- function(x = matrix()) {
    set <- function(y) {
        x <<- y
    }
    get <- function() x
    list(set = set, get = get)
}

## CacheSolve takes an makeCacheMatrix object and uses the get function
## to grab the cached matrix and performs the inverse functoin on each value

cacheSolve <- function(x, ...) {
    orig <- x$get()
    if(!is.null(orig)) {
        message("creating matrix inverse")
        return(solve(orig))
    } else{
        message("Matrix does not exist")
    }
}
