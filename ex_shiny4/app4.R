library(shiny)

# Definindo a interface do usuário (UI)
ui <- fluidPage(
  titlePanel("Variação da Inclinação em uma Regressão"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slope", "Inclinação:", min = -2, max = 2, value = 0, step = 0.1),
      sliderInput("intercept", "Intercepto:", min = -10, max = 10, value = 0, step = 0.1),
      sliderInput("noise", "Ruído:", min = 0, max = 2, value = 0.5, step = 0.1)
    ),
    mainPanel(
      plotOutput("regression_plot")
    )
  )
)

# Definindo o servidor (server)
server <- function(input, output) {
  # Função para gerar dados de exemplo com base nos parâmetros
  generate_data <- function(slope, intercept, noise) {
    x <- seq(0, 10, by = 0.5)
    y <- slope * x + intercept + rnorm(length(x), mean = 0, sd = noise)
    return(data.frame(x, y))
  }
  
  # Renderizando o gráfico de regressão
  output$regression_plot <- renderPlot({
    data <- generate_data(input$slope, input$intercept, input$noise)

    plot(data$x, data$y, pch = 16, col = "blue", xlab = "X", ylab = "Y", main = "Regressão")
    
    # Ajustando a regressão linear
    regression <- lm(y ~ x, data = data)
    abline(regression, col = "red")
  })
}

# Executando o aplicativo Shiny
shinyApp(ui = ui, server = server)
