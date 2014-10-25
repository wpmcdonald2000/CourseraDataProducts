library(shiny)
#       Define the UI
shinyUI(fluidPage(
        titlePanel("Super Harmonograph"),

#       Choose the basic side bar layout with integer and decimal inputs
        sidebarLayout(
                sidebarPanel(
                        helpText("Choose variables "),
                        
                        sliderInput("integer", "Frequency Jitter:", min=2, max=20, value=10),
                        
                        sliderInput("decimal", "Damping:", min = 0.0001, max = .010, value = .005, step = .001 ),
                        
                        sliderInput('pi', 'Phase Factor:', min = 1, max = 10, value = 5, step = 1 ),

                        
                        
                        helpText('A playful app to randomly create Harmonograph images using the 
                                 sliders as multipliers for some of the chart output variables')
                        ),
#       Show the resulting plot using the variable multipliers 
                mainPanel(
                        plotOutput("plot1")
                        )
)))