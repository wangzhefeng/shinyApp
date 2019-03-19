## app.R ##

library(shiny)
library(shinydashboard)
#===============================================================================
header <- dashboardHeader(title = "Data Visualization", 
                          # Message drop down menu
                          dropdownMenu(type = "messages", 
                                       messageItem(
                                           from = "Sales Dept",
                                           message = "Sales are steady this month."
                                       ),
                                       messageItem(
                                           from = "New User",
                                           message = "How do I register?",
                                           icon = icon("question"),
                                           time = "13:45"
                                       ), 
                                       messageItem(
                                           from = "Support",
                                           message = "The new server is ready.",
                                           icon = icon("life-ring"),
                                           time = "2014-12-01"
                                       )),
                          # Notification drop down menu
                          dropdownMenu(type = "notifications",
                                       notificationItem(
                                           text = "5 new users today",
                                           icon("users")
                                       ),
                                       notificationItem(
                                           text = "12 items delivered",
                                           icon("truck"),
                                           status = "success"
                                       ),
                                       notificationItem(
                                           text = "Server load at 86%",
                                           icon = icon("exclamation-triangle"),
                                           status = "warning"
                                       )), 
                          # Task drop down menu
                          dropdownMenu(type = "task",
                                       badgeStatus = "success",
                                       taskItem(
                                           value = 90,
                                           color = "green",
                                           "Documentation"),
                                       taskItem(
                                           value = 17,
                                           color = "aqua",
                                           "Project X"),
                                       taskItem(
                                           value = 75,
                                           color = "yellow",
                                           "Server deployment"),
                                       taskItem(
                                           value = 80,
                                           color = "red",
                                           "Overall project"
                                       )), 
                          # Disable header !!!
                          disable = FALSE)

sidebar <- dashboardSidebar(
    #sidebarMenu
    sidebarMenu(
        menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Reports", tabName = "reports", icon = icon("th")),
        menuItem("Hotels", tabName = "hotels", icon = icon("th")),
        menuItem("Channels", tabName = "channels", icon = icon("th")), 
        menuItem("Bidding", tabName = "bidding", icon = icon("th")), 
        menuItem("Alerts", tabName = "alerts", icon = icon("th"))
    )
    #sidebarMenuOutput
    #sidebarMenuOutput(),
    
    #sidebarSearchForm
    #sidebarSearchForm(),
    
    #sidebarUserPanel
    #sidebarUserPanel()
)

body <- dashboardBody(
    # tabItem
    tabItems(
        # first tab content
        tabItem(
            tabName = "dashboard", 
            ## 1.fluidRow
            fluidRow(
                ### output
                box(plotOutput("plot1", height = 250)),
                ### input
                box(title = "Controls", 
                    sliderInput("slider", "Number of observations:", 1, 100, 50))
            )
        ),
        # second tab content
        tabItem(
            tabName = "reports",
            h2("Reports tab Content")
        ),
        tabItem(
            tabName = "hotels",
            h2("Hotels tab Content")
        ),
        tabItem(
            tabName = "channels",
            h2("Channel tab Content")
        ),
        tabItem(
            tabName = "bidding",
            h2("Bidding tab Content")
        ), 
        tabItem(
            tabName = "alerts",
            h2("Alert tab Content")
        )
    )
)
#===============================================================================
ui <- dashboardPage(header, sidebar, body)
server <- function(input, output) {
    # data
    set.seed(122)
    histdata <- rnorm(500)
    # outout-input
    output$plot1 <- renderPlot({
        data <- histdata[seq_len(input$slider)]
        hist(data)
    })
}
#===============================================================================
shinyApp(ui, server)
