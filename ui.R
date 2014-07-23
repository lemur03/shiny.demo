
library(shiny)
library(ggplot2)

stats <- c("lm","loess")

shinyUI(fluidPage(
  
  titlePanel("Simple data analysis"),
    
  fluidRow(
    column(3, wellPanel(
    selectInput('y', 'Response', names(mtcars),names(mtcars)[[1]]))),
    
    column(3, wellPanel(
    # Dynamic list of explanatory
    uiOutput("explanatory"))),
   
    column(3, wellPanel(
   # Grouping Colour
   uiOutput("colour"))),
   
   column(3, wellPanel(
   selectInput('stat', 'Regression Line', stats,stats[[1]])    
  ))),
  fluidRow(
    column(3, wellPanel(
      tags$h3("Instruction"),
      tags$p(" 1- Define the reponse variable then the explanatory one"),    
      tags$p(" 2- Define which value to use to deferenciate the value (Coloring)"),    
      tags$p(" 3- Define the type of regression line that will be applied (Linear or Polynomial)"), 
    tags$a(href="http://rpubs.com/lemur03/shinydemo","More info on Rpubs"))), 
    column(9, plotOutput('plot')
  ))
  
))


