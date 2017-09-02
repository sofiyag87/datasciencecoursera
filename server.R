
mpgp<-function(am,cyl,disp,hp,wt) 
         30.20+1.55*am-1.1*cyl+0.01*disp-0.02*hp-3.3*wt

shinyServer(
  function(input, output) {
      
      mpgpv<-reactive({
        mpgp(input$am,input$cyl,input$disp,input$hp,input$wt)
      })
    
      output$prediction <- renderPrint({mpgpv()})
      output$gra<-renderPlot({
        library(datasets)
        data("mtcars")
        hist(mtcars$mpg,breaks=30)
        abline(v=as.numeric(mpgpv()),lwd=3,cex=2,col="red")
        
        
    })
  }
)
