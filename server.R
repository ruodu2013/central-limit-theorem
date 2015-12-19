library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output){


  output$distPlot <- renderPlot({
      die<-rep(NA,6)
      die[1]<-input$face_1
      die[2]<-input$face_2
      die[3]<-input$face_3
      die[4]<-input$face_4
      die[5]<-input$face_5
      die[6]<-input$face_6
  
      OneSetMean<-rep(NA,input$rolling_times)
      for(i in 1:input$rolling_times){
          oneset<-sample(die,input$dice_number,replace = T);
          OneSetMean[i]<-mean(oneset)
      }
      
      m1<<-mean(OneSetMean)
      s1<<-sd(OneSetMean)

    hist(OneSetMean, breaks = seq(0,10,0.1),freq=F,col = 'darkgray', border = 'white',main = paste("The mean is", m1,"  The sd is",s1))
    
    x= seq(0,10,0.1)
    lines(x,dnorm(x,m1,s1),lty=2,col="red")
  })


  
# formulaText <- reactive({
#      paste("the mean is", m1)
#   })
# output$meanoutput <- renderText({
#     paste("the mean is",reactive({m1}))
#})
  
  
  
  
  
  
  
  
})
 
  
  


