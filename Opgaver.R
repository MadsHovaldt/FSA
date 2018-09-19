#' # Opgave 1

# 1
loop <- function(x){
n <- length(x)  
s <- 1
for(i in 1:n)
  s <- s*x[i]  
return(s)
}
x <- c(2,5,2)

loop(x)


# 2
fibo <- function(x){
  s <- 1
  s[1]=s[2]=1
  if (x<=2)
    return(s)
  else{
    for(i in 3:x){
    s[i] <- s[i-1]+s[i-2]
  }
    return(s[i])
  }
}
  
fibo(7)


#' # Opgave 2
# 1
cars
plot(cars)
X <- matrix(c(rep(1,50),cars$speed),50,2)
Y <- c(cars$dist)
a <- solve(t(X)%*%X,t(X)%*%Y)
plot(cars$speed, cars$dist)
?abline
plot(cars$speed, cars$dist, abline(a[1],a[2],col="black"),col="green")
sigma <- (t(Y-X%*%a)%*%(Y-X%*%a))/(50-3)
sigma
