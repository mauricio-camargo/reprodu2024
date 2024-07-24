library(shiny)

ui <- fluidPage(
  titlePanel("Demonstração do Teorema do Limite Central"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("sample_size", "Tamanho da amostra:", 
                  min = 10, max = 1000, value = 100, step = 10),
      
      sliderInput("num_samples", "Número de amostras:", 
                  min = 10, max = 1000, value = 100, step = 10)
    ),
    
    mainPanel(
      plotOutput("histogram")
    )
  )
)

server <- function(input, output) {
  generate_samples <- reactive({
    replicate(input$num_samples, {
      rnorm(input$sample_size)
    })
  })
  
  output$histogram <- renderPlot({
    samples <- generate_samples()
    means <- rowMeans(samples)
    
    hist(means, breaks = 30, col = "skyblue", xlab = "Média Amostral", 
         ylab = "Frequência", main = "Distribuição das Médias Amostrais")
  })
}

shinyApp(ui, server)
