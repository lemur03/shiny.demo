library(shiny)
library(ggplot2)

data(mtcars)

shinyServer(function(input, output) {  
  
  data <- reactive({mtcars})  
    
  output$explanatory <- renderUI({
    if (is.null(input$y))
      return()
    # Depending on input$y, we'll update the possible precitors.
    otherNames <- names(data())[!(names(data()) %in% c(input$y))]
    selectInput("x", "explanatory",
                choices =  otherNames,
                selected = otherNames[[1]])  
  })
  
  output$colour <- renderUI({
    if (is.null(input$x))
      return()
    # Depending on input$x, we'll update the possible precitors.
    otherNames <- names(data())[!(names(data()) %in% c(input$y,input$x))]
    otherNames <- otherNames[otherNames %in% c("cyl","gear","vs","am","carb") ] 
    selectInput("color", "Group",
                choices =  otherNames,
                selected = otherNames[[1]])  
  })
  
  
  output$plot <- renderPlot({
    if (is.null(input$y) || is.null(input$x) || is.null(input$color))
      return()
    
    p<- ggplot(data(), aes_string(x=input$x, y=input$y)) + 
        geom_point(aes_string(colour=input$color),size=3) +    
        stat_smooth(method=input$stat)
    print(p)
    }, height=500)  
})
