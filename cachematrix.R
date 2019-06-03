cacheSolve <- function(x) {
    m <- x$getInverse() # This fetches the cached value for the inverse
    if(!is.null(m)) { # If the cache was not empty, we can just return it
        message("getting cached data")
        return(m)
    }
    # The cache was empty. We need to calculate it, cache it, and then return it.
    data <- x$get()  # Get value of matrix
    m <- solve(data) # Calculate inverse
    x$setInverse(m)  # Cache the result
    m                # Return the inverse
}
