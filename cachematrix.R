## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inver <<- inverse
        getInverse <- function() inver
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


cacheSolve <- function(x, ...) {
      inver<-x$getInverse()
        if(!is.null(inver)) {
                message("Getting cached data")
                return(inver)                
}
        data<-x$data()
        inver<-solve(data, ...)
        x$setInverse(inver)
        inver
}
