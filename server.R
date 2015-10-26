# load libraries
library(shiny)
require(googleVis)
# begin shiny server
shinyServer(function(input, output) {
        
        number<-sample(1:100,1)
        
        
        
        output$hand <- renderText({
                input$gob
                isolate({if (input$id2 == 0){""} 
                         else if (input$id2 == number) {"Right!! (For the new game press 'F5')"}
                         else if (input$id2>number) {"Try lower"}
                         else {"Try higher"}})
        })
       
})