## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverseM <- NULL          #inverseM inital as null
        set <- function(y){
                x<<-y
                inverseM <<- NULL
  }
  get< function(){x}     #function get matrix x
  setInv<-function(caluclateInv){inverseM<<-caluclateInv}
  getInv<-function(){inverseM}
    list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inverseM <-x$getInv()
        if(!is.null(inverseM)){   #check if inverse is null
                return(inverseM)      #return value of inverse
  }
  data<-x$get()
  inverseM <- solve(data,...) ## inverse value calculate
  x$setInverse(inverseM)
  inverseM  ## Return a matrix that is the inverse of 'x'
}
