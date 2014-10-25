library(shiny)

shinyServer(function(input, output){
        
        sliderValues <- reactive({
          
                data.frame(
                        Name <- c("Integer", "Decimal", "Pi Factor"),
                        
                        Value <- as.character(c(input$integer, input$decimal, input$pi)),
                        
                        stringAsFactors = FALSE)               
        })
        
        output$plot1 <- renderPlot({
                f1=jitter(sample(c(1,input$integer),1)); f2=jitter(sample(c(1,input$integer),1));
                f3=jitter(sample(c(1,input$integer),1)); f4=jitter(sample(c(1,input$integer),1))
                d1=runif(1,0,input$decimal);d2=runif(1,0,input$decimal);
                d3=runif(1,0,input$decimal);d4=runif(1,0,input$decimal)
                p1=runif(1,0,pi*input$pi);p2=runif(1,0,pi*input$pi);
                p3=runif(1,0,pi*input$pi);p4=runif(1,0,pi*input$pi)
                xt = function(t) exp(-d1*t)*cos(t*f1+p1)+exp(-d2*t)*sin(t*f2+p2)
                yt = function(t) exp(-d3*t)*cos(t*f3+p3)+exp(-d4*t)*sin(t*f4+p4)
                t=seq(1, 100, by=.001)
                dat=data.frame(t=t, x=xt(t), y=yt(t))
                COL <- rainbow(nrow(dat))
                with(dat, plot(x,y, type="l", xlim =c(-2,2), ylim =c(-2,2), xlab = "", ylab = "", xaxt='n', yaxt='n'))
        })       
})