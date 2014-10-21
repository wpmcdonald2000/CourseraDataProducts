football <- load("weeklystatsdf.rda")
year <- c(1990:2014)
shinyServer(function(input, output) {
        datasetInput <- reactive({
                switch(input$dataset,
                       '2014' = weeklystatsdf[weeklystatsdf$Year == 2014,c(3:9,11)],
                       '2013' = weeklystatsdf[weeklystatsdf$Year == 2012,c(3:9,11)],
                       '2012' = weeklystatsdf[weeklystatsdf$Year == 2012,c(3:9,11)],)
        })
        
        output$table <- renderDataTable({
                datasetInput()
        })
        
#        output$downloadData <- downloadHandler(
#                filename = function() { 
#                        paste(input$dataset, '.csv', sep='') 
#                },
#                content = function(file) {
#                        write.csv(datasetInput(), file)
#                }
#        )
})