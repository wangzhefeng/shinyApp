library(shiny)
mpgData = mtcars
mpgData$am = factor(mpgData$am, labels = c("Automatic", "Manual"))



shinyServer(
    function(input, output) {
        
    }
)