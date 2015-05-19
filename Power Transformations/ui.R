# Power tranformations using Box-Cox
# May 19, 2015
# Ray Nelson



shinyUI(fluidPage(
  titlePanel("Box Cox Transformation"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("theta", label = h3("Original Power"), min = -5, 
                  max = 5, value = 1, step = 0.1),
      
        sliderInput("lambda", label = h3("Box-Cox Lambda"), min = -5, 
                max = 5, value = 1, step = 0.1)
    ),
    
    mainPanel(
      plotOutput("graph")
    )
  )
))