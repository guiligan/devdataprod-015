library(shiny)
shinyUI(pageWithSidebar(
    headerPanel('Cars fuel consumption vs aspects of design k-means clustering'),
    sidebarPanel(
        span("Select between different cars design aspects and the number of
             clusters to group according to fuel effiency."),
        selectInput('xcol', 'X Variable', names(mtcars),
                    selected=names(mtcars)[[2]]),
        numericInput('clusters', 'Cluster count', 3,
                     min = 1, max = 9),
        h3('Clusters Sizes'),
        textOutput('clusters')
    ),
    mainPanel(
        plotOutput('plot1')
    )
))