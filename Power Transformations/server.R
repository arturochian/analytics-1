# Power tranformations using Box-Cox
# May 19, 2015
# Ray Nelson

# Required Libraries ------------------------------------------------------

require(shiny)
require(forecast)
require(ggplot2)
require(reshape2)

# Function for shiny ---------------------------------------------------

chooseLambda <- function(theta, lambda){
    x <- 1:100
    y <- x^theta
    transformed_y <- BoxCox(y, lambda)
    plotData <- data.frame(x, y, transformed_y)
    plotData <- melt(plotData, id.vars = "x",
                     measure.vars = c("y", "transformed_y"))
    colnames(plotData) <- c("x", "variable", "y")
    ggplot(data = plotData, aes(x = x, y = y)) +
        geom_line(aes(y = y)) +
        facet_grid(variable ~ ., scales = "free_y")
}


# Shiny function ----------------------------------------------------------
shinyServer(
  function(input, output) {
    output$graph <- renderPlot({
      chooseLambda(input$theta, input$lambda)
    })
})
