library(shiny)
# Define Serverr
shinyServer(function(input, output){
#       Create the reaactie expressions for desired variable input        
        sliderValues <- reactive({
                
#               Compose a data frame for possible dispaly         
                data.frame(
                        Name <- c("Integer", "Decimal", "Pi Factor", 'L Spir','U Spir'),                        
                        Value <- as.character(c(input$integer, input$decimal, input$pi, input$spir[1], input$spir[2]),                        
                        stringAsFactors = FALSE))               
        })

#       Use the reactive variable in the defined chart output
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

        output$plot2 <- renderPlot({
                R <- 3
                l <- jitter(sample(c(.2,.8),1))
                k <- jitter(sample(c(.2,.8),1))
                kf <- (1 - k)/k
                x_t = function(t) R*((1 - k)*cos(t) + l * k*cos(kf*t))
                y_t = function(t) R*((1 - k)*sin(t) + l * k*sin(kf*t))
                t_=seq(1, 60*pi, by= pi/1000)
                dat=data.frame(t=t_, x=xt(t_), y=yt(t_))
                COL <- rainbow(nrow(dat))
                with(dat, plot(x,y, type="l", xlim =c(-3,3), ylim =c(-3,3), xlab = "", ylab = "", xaxt='n', yaxt='n'))
        })
})