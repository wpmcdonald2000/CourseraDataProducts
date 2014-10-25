library(shiny)

shinyUI(fluidPage(
        titlePanel("Super Spirograph"),
        
        sidebarLayout(
                sidebarPanel(
                        helpText("Choose variables "),
                        
                        sliderInput("integer", "Jitter:", min=0, max=20, value=10),
                        
                        sliderInput("decimal", "Run:", min = 0, max = .010, value = .005, step = .001 ),
                        
                        sliderInput('pi', 'PI factor:', min = 1, max = 10, value = 5, step = 1 )
                        ),
                mainPanel(
                        plotOutput("plot1")
                        )
)))