library(shiny)

shinyUI(
        pageWithSidebar(
                headerPanel("Your dream car of mid-1970th"),
                sidebarPanel(
                        h3("Instructions"),
                        p("Use the following filters to select the most suitable car for you from the 1973–74 models."),
                        selectInput('x', 'Select the engine cylinder number', c(4,6,8),selected="Cylinders"),
                        sliderInput('y', 'Select the gross horsepower of the engine', min = 50, 
                                    max = 270, value=c(50,270), step=1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h4('You selected a model with a'),
                        verbatimTextOutput('inputValue1'),
                        h4('-cylinder engine and gross horsepower performance between:'),
                        verbatimTextOutput('inputValue2'),
                        h4('hps.'),
                        h4('Thus, we would advise you'),
                        verbatimTextOutput('prediction'),
                        h4('models.')
                                )
        )
)