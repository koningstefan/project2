#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel(img(src="logo.jpg", width="50" )),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      navbarPage("Gemeente Den Haag",
                   tabPanel("Dashboard"),
                   mainPanel(
                     plotOutput("plot")
                   ),
                   tabPanel("Historie",
                             verbatimTextOutput("historie")),
                   tabPanel("App inbox",
                             verbatimTextOutput("app inbox"))
      )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      img(src="logo.jpg", width="340" )
    )
  )
))
