library(shiny)

# Definindo a interface do usuário (UI)
ui <- fluidPage(
  titlePanel("Ajuste da Distribuição Normal"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("mean", "Média:", min = -10, max = 10, value = 0, step = 0.1),
      sliderInput("sd", "Desvio Padrão:", min = 0.1, max = 5, value = 1, step = 0.1)
    ),
    mainPanel(
      plotOutput("normal_distribution_plot")
    )
  )
)

# Definindo o servidor (server)
server <- function(input, output) {
  # Função para calcular a densidade da distribuição normal
  calculate_density <- function(mean, sd) {
    x <- seq(-10, 10, by = 0.1)
    density <- dnorm(x, mean = mean, sd = sd)
    
    data <- data.frame(x, density)
    return(data)
  }
  
  # Renderizando o gráfico da distribuição normal
  output$normal_distribution_plot <- renderPlot({
    data <- calculate_density(input$mean, input$sd)
    
    plot(data$x, data$density, type = "l", xlab = "Valores", ylab = "Densidade",
         main = "Distribuição Normal", xlim = c(-10, 10), ylim = c(0, 0.5))
  })
}

# Executando o aplicativo Shiny
shinyApp(ui = ui, server = server)
