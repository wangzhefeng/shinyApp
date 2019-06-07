library(shiny)

shinyUI(
    pageWithSidebar(
        headerPanel("Miles Per Gallon"),
        sidebarPanel(selectInput(inputId = "variable", 
                                 label = "Variable:", 
                                 choices = list("Cylinders" = "cyl",
                                                "Transmission" = "am", 
                                                "Gear" = "gear"),
                                 selected = NULL, 
                                 multiple = FALSE,
                                 selectize = TRUE, 
                                 width = NULL, 
                                 size = NULL), 
                     checkboxInput(inputId = "outliers",
                                   label = "Show outliers:",
                                   value = FALSE, 
                                   width = NULL)),
        mainPanel()
    )
)