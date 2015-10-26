# load shiny package
library(shiny)
# begin shiny UI
shinyUI(navbarPage("Shiny Project",
                   tabPanel("Documentation",
                            h3("Guess the number"),
                            p("It's simple stupid game where you need to guess random integer number from 1 to 100. You have a field, where you can put your guess. Then you need to press submit button and you will see is your number higher or lower than guessed. You can win in 7 guesses. New game starts after refreshing the page. You can find server.R and ui.R on github: https://github.com/frusch/devdataprod-033")
                            ),
                   # second tab
                   tabPanel("Game",
                            numericInput('id2', 'Enter your number', value = 0, min = 0, max = 100, step = 1),
                            actionButton("gob","Submit"),
                            fluidRow(
                                    column(12,h4(span(textOutput("hand", inline = TRUE),
                                                      style = "color: red; font-size: 20px")),
                                          
                                           # additional style
                                           style = "padding-left: 20px"
                                    )
                            ),
                            # absolute panel
                            absolutePanel(
                                    # position attributes
                                    top = 50, left = 0, right =0,
                                    fixed = TRUE)
                   )
))