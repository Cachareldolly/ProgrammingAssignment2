## i've tried to reproduce the code given as an example, but it applies for matrices 
## this code set the cache matrix, and also its inverted matrix.

## here i store the result in m, so we get this cache inverted matrix

makeCacheMatrix <- function(x = matrix()){ 
    m <<-NULL
        setmatrix <- function (y){
            x <<- y
            m <<- NULL}
        getmatrix <- function()  {x}
        setsolve <- function(solve)  m <<-solve(x)
        getsolve <- function ()  m 
        list (setmatrix = setmatrix, getmatrix = getmatrix,setsolve = setsolve, getsolve = getsolve)


}


## This code reproduce the cached matrix, and gives the message

cacheSolve <- function(x=matrix(),...) {
    m <- x$getsolve
    if(!is.null(m)) {
        message("getting cached matrix")
        m
    }
    ##if the inverse is not stored, we get the inverse of the new matrix
    matrix<-x$getmatrix()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m  
    ## Return a matrix that is the inverse of 'x'
}
