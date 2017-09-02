

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Miles per Gallon Prediction"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      numericInput('am', 'Manual/Automatic',0, min = 0, max = 1),
      numericInput('cyl', 'Number of Cylinders',4, min = 4, max = 8,step=2),
      numericInput('disp', 'Dislacement in inches',100, min = 70, max = 500,step=1),
      numericInput('hp', 'Gross horsepower',60, min = 50, max = 350,step=1),
      numericInput('wt', 'Weight (1000lbs)',2, min = 1, max = 6,step=0.5),
                 submitButton('Submit')
    ),
    
    # Show the regression value
    mainPanel(
      h3('Results of prediction'),
      verbatimTextOutput("prediction"),
      plotOutput("gra")
    )
  )
))
