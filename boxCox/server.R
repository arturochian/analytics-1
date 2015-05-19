# Power tranformations using Box-Cox
# May 19, 2015
# Ray Nelson

# Required Libraries ------------------------------------------------------

require(shiny)
require(forecast)
require(ggplot2)

# Function for shiny ---------------------------------------------------

chooseLambda <- function(theta, lambda){
    lambda <- 1/theta
    x <- 1:100
    y <- x^theta
    transformed_y <- 
}


# Shiny function ----------------------------------------------------------
shinyServer(
  function(input, output) {
    output$graph <- renderPlot({
      # function from above
    })
})