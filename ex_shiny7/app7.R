library(shiny)

ui <- fluidPage(
  titlePanel("Demonstração de Widgets Shiny"),
  
  sidebarLayout(
    sidebarPanel(
      # Text Input
      textInput("text_input", "Text Input", value = ""),
      
      # Numeric Input
      numericInput("numeric_input", "Numeric Input", value = 0),
      
      # Date Input
      dateInput("date_input", "Date Input", value = Sys.Date()),
      
      # Slider Input
      sliderInput("slider_input", "Slider Input", min = 1, max = 100, value = 50),
      
      # Select Input
      selectInput("select_input", "Select Input",
                  choices = c("Option 1", "Option 2", "Option 3"), selected = "Option 1"),
      
      # Checkbox Input
      checkboxInput("checkbox_input", "Checkbox Input", value = FALSE),
      
      # Radio Buttons
      radioButtons("radio_input", "Radio Buttons",
                   choices = c("Option 1", "Option 2", "Option 3"), selected = "Option 1"),
      
      # Action Button
      actionButton("action_button", "Action Button"),
      
      # File Input
      fileInput("file_input", "File Input"),
      
      # Submit Button
      submitButton("Submit Button"),
      
      # Verbatim Text Output
      verbatimTextOutput("verbatim_output")
    ),
    
    mainPanel(
      # Output Text
      textOutput("output_text"),
      
      # Output Plot
      plotOutput("output_plot"),
      
      # Output Table
      tableOutput("output_table")
    )
  )
)

server <- function(input, output) {
  # Verbatim Text Output
  output$verbatim_output <- renderPrint({
    input$text_input
  })
  
  # Output Text
  output$output_text <- renderText({
    input$text_input
  })
  
  # Output Plot
  output$output_plot <- renderPlot({
    plot(x = 1:input$numeric_input, y = rnorm(input$numeric_input),
         main = "Example Plot", type = "l")
  })
  
  # Output Table
  output$output_table <- renderTable({
    data.frame(
      X = 1:input$numeric_input,
      Y = rnorm(input$numeric_input),
      Date = seq(input$date_input, by = "day", length.out = input$numeric_input)
    )
  })
}

shinyApp(ui, server)
