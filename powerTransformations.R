# Power tranformations using Box-Cox
# May 19, 2015
# Ray Nelson

# Required libraries ------------------------------------------------------

require(ggplot2)
require(forecast)

# Create Data -------------------------------------------------------------
theta <- -1
lambda <- 1/theta
x <- 1:100
y <- x^theta
plot(x, y)
plot(x, BoxCox(y, lambda))
