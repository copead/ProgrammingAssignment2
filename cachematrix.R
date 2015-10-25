## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(q) {
                x <<- matrix(q, sqrt(length(q)), sqrt(length(q))) #takes the values entered for q
                                                                  # creates a square root of the number of values in q 
                                                                  # by square root of the number of values in q matrix using the values for q
                i <<- NULL
        }
        get <- function() { #takes the values entered for z
                b <- matrix(x, sqrt(length(x)), sqrt(length(x))) # creates a square root of the number of values in x 
                                                                 # by square root of the number of values in x matrix using the values for x
                b #returns the matrix
        }
        setInverse <- function(solve) i <<- solve
        getInverse <- function() i
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setmean(m)
        m
}
