# Power tranformations using Box-Cox
# May 19, 2015
# Ray Nelson



shinyUI(fluidPage(
  titlePanel("Box Cox Transformation"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("lambda", label = h3("Box-Cox Lambda"), min = -2, 
                  max = 2, value = 1, step = 0.1)
    ),
    
    mainPanel(
      plotOutput("graph")
    )
  )
))