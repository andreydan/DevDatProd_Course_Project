library(shiny)
library(datasets)
data(mtcars)

dreamCar <- function(x,y) {
        row.names(subset(mtcars, mtcars$cyl == x & mtcars$hp >= y[1] & mtcars$hp <= y[2]))
        }

shinyServer(function(input, output) {
                
                output$inputValue1 <- renderPrint({input$x})
                output$inputValue2 <- renderPrint({input$y})
                output$prediction <- renderPrint({
                        ifelse(length(as.list(dreamCar(input$x,input$y)))==0,
                               "to change your appetites - for you we have no available car ",
                               list(dreamCar(input$x,input$y)))
                               })
        }
)