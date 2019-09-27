## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ##similar to makeVector function, we firstly assign NULL to m and check if m if NULL.
        inv <- NULL
        set <- function(y){
        x <<- y
        inv <<- NULL
        }
        ##then, we use solveMatrix function just as mean function to get the inverse of the matrix
        get <- function() x
        setInverse <- function(solveMatrix) inv <<- solveMatrix
        getInverse <- function() inv
        list(set = set, get = get, 
             setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        ##just follow the procedure of cachemean funciton, and finally return "inv"
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv    
}
