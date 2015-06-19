test <- function(mat){
  ## test an invertible matrix caching
  
  temp <- makeCacheMatrix(mat)
  
  start.time <- Sys.time()
  cacheSolve(temp)
  dur <- Sys.time() - start.time
  print(dur)
  
  start.time <- Sys.time()
  cacheSolve(temp)
  dur <- Sys.time() - start.time
  print(dur)
  
  ## set.seed(1110201)
  ## r <- rnorm(1000000)
  ## mat1 <- matrix(r, nrow=1000, ncol=1000)
  ## test(mat1)
  
  
}