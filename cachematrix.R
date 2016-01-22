## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
    m <<-NULL
        setmatrix <- function (y){
            x <<- y
            m <<- NULL
}
        getmatrix <- function()  x
        setsolve <- function (solve) m<<-solve
        getsolve <- function ()  m 
        list (setmatrix = setmatrix, getmatrix = getmatrix,setsolve = setsolve, getsolve = getsolve)


}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(),...) {
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached matrix")
        return(m)
    }
        ## Return a matrix that is the inverse of 'x'
}
