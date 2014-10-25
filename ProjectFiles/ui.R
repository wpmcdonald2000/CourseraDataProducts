library(shiny)
#       Define the UI
shinyUI(fluidPage(
        titlePanel("Super Spirograph"),

#       Choose the basic side bar layout with integer and decimal inputs
        sidebarLayout(
                sidebarPanel(
                        helpText("Choose variables "),
                        
                        sliderInput("integer", "Jitter:", min=0, max=20, value=10),
                        
                        sliderInput("decimal", "Run:", min = 0, max = .010, value = .005, step = .001 ),
                        
                        sliderInput('pi', 'PI factor:', min = 1, max = 10, value = 5, step = 1 )
                        ),
#       Show the resulting plot using the variable multipliers 
                mainPanel(
                        plotOutput("plot1")
                        )
)))