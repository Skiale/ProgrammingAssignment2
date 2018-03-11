## 

## Make a function that (1) deletes any matrix inverse stored in the cache
## (2) defines the getter for the vector x and (3) defines the setter and the getter 
##for the inverse 'g' and (4) prints a list of all the f(x) to the parent environment


makeCacheMatrix <- function(x = matrix()) {
					g <- NULL
					
					  set <- function(y){
					    x <<- y
					    g <<- NULL
					  }
					  
				  get <- function() x
				  setinverse <- function(inverse) g <<- inverse
				  getinverse <- function() g
				  
				  list( set = set, get = get,
				        setinverse = setinverse,
				        getinverse = getinverse)
}


## Make the inverse of the matrix returned by makeCacheMatrix.
## if the inverse 'g' is null it will compute the matrix inverse of the input object 
## if the 'g' is not null it will be returned to the parent environment

cacheSolve <- function(x, ...) {
          g <- z$getinverse()
          
		 if(!is.null(g)){
		    message("getting cached data")
		    return(g)
		    }
		    
	    data <- z$get()
	    g <- solve(data, ...)
	    z$setinverse(g)
	    g
}
