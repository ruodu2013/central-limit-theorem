library(shiny)

shinyUI(fluidPage(
   titlePanel("Let's simulate CLT!"),

   sidebarLayout(
       sidebarPanel(
           helpText("Please choose your 6 dice"),
           
           sliderInput("dice_number", label = "How many dice do you have?",
                       min = 0, max = 100, value = 2),
           sliderInput("rolling_times", label = "times of rolling",
                       min = 0, max = 1000, value = 50),
           
           sliderInput("face_1", label = "face_1", min = 1, max = 9, value = 1), 
           sliderInput("face_2", label = "face_2", min = 1, max = 9, value = 2), 
           sliderInput("face_3", label = "face_3", min = 1, max = 9, value = 3),
           sliderInput("face_4", label = "face_4", min = 1, max = 9, value = 4), 
           sliderInput("face_5", label = "face_5", min = 1, max = 9, value = 5), 
           sliderInput("face_6", label = "face_6", min = 1, max = 9, value = 6)
        
           
           
           
   
       ),
 

       mainPanel(
           plotOutput("distPlot"),
           textOutput("meanoutput")
       )
  )
  
))
