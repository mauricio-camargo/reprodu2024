library(shiny)

# Definindo a interface do usuário (UI)
ui <- fluidPage(
  titlePanel("Efeito de um Outlier na Regressão"),
  sidebarLayout(
    sidebarPanel(
      numericInput("outlier_x", "Coordenada X do Outlier:", value = 8),
      numericInput("outlier_y", "Coordenada Y do Outlier:", value = 25)
    ),
    mainPanel(
      plotOutput("regression_plot")
    )
  )
)

# Definindo o servidor (server)
server <- function(input, output) {
  # Função para calcular a regressão e plotar o gráfico
  calculate_regression <- function(outlier_x, outlier_y) {
    # Dados iniciais
    x <- c(1, 2, 3, 4, 5)
    y <- c(2, 4, 5, 4, 6)
    
    # Adicionando o outlier
    x <- c(x, outlier_x)
    y <- c(y, outlier_y)
    
    # Criando um data frame com os dados
    data <- data.frame(x, y)
    
    # Ajustando a regressão linear
    lm_model <- lm(y ~ x, data = data)
    
    # Coeficiente de determinação (R²)
    r_squared <- summary(lm_model)$r.squared
    
    # Plotando o gráfico
    plot(x, y, pch = 16, col = "blue", xlim = c(0, 10), ylim = c(0, 30),
         xlab = "X", ylab = "Y", main = paste0("R² = ", round(r_squared, 2)))
    
    # Plotando a linha de regressão
    abline(lm_model, col = "red")
  }
  
  # Renderizando o gráfico
  output$regression_plot <- renderPlot({
    calculate_regression(input$outlier_x, input$outlier_y)
  })
}

# Executando o aplicativo Shiny
shinyApp(ui = ui, server = server)
