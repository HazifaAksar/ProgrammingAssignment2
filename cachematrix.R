## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function caches the inverse of a matrix. We can set, get the value of the matrix and inverse of a matrix from this special vector 'matrix'
# x being a matrix who m i.e. inverse will be set and accessed
makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	setMatrix <- function(y){
		x <<- y
		m <<- NULL
	}

	getMatrix function(){
		x
	}

	setInverse <- function(inverse){
		m <- inverse
	}

	getInverse <- function(){
		m
	}

	list(set = setMatrix, get = getMatrix, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
# This function will calculate the inverse of the matrix. And then it will use the special vector 'matrix' to set or get the inverse to/from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getInverse()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}

	data <- x$get()
	m <- solve(data)
	x$setInverse(m)
	m
}
