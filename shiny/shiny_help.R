# install.packages("shiny")
setwd("E:\\R\\gongjv\\shiny")
shiny::runApp("my_first_app", display.mode = "showcase")

system.file("examples", package = "shiny")
shiny::runExample("01_hello")      # a histogram
shiny::runExample("02_text")       # tables and data frames
shiny::runExample("03_reactivity") # a reactive expression
shiny::runExample("04_mpg")        # global variables
shiny::runExample("05_sliders")    # slider bars
shiny::runExample("06_tabsets")    # tabbed panels
shiny::runExample("07_widgets")    # help text and submit buttons
shiny::runExample("08_html")       # Shiny app built from HTML
shiny::runExample("09_upload")     # file upload wizard
shiny::runExample("10_download")   # file download wizard
shiny::runExample("11_timer")      # an automated timer


################################################################################
## ui.R
## Input
selectInput()     ## 选择变量
checkboxInput()   ## 检查是/否
textInput()       ## 
numericInput()    ## 
sliderInput()     ## 滑动条

## Output
h3(textOutput())
verbatimTextOutput()
tableOutput()
plotOutput()

################################################################################
## serve.R