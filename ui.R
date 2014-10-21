year <- c(1990:2014)
football <- load("weeklystatsdf.rda")
shinyUI(fluidPage(
        titlePanel("Football Data"),
        
        sidebarLayout(
                sidebarPanel(
                        helpText("View a seasons worth of NFL Football data."),
                        
                        selectInput("dataset", 
                                    label = "Choose a year to display",
                                    choices = year,
                                    selected = 2014)
                       
                ),
                
                mainPanel(dataTableOutput("table"))
        )
))