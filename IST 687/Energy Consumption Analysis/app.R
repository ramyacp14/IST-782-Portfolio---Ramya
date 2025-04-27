library(shiny)
library(ggplot2)
library(shinydashboard)
library(dplyr)
library(DT)
library(tidyverse)

predicted_df <- read.csv('predicted_df.csv')
selected_dates <- c("2018-07-01", "2018-07-04", "2018-07-07","2018-07-10","2018-07-13","2018-07-17","2018-07-20","2018-07-23","2018-07-27","2018-07-31")

predicted_df <- predicted_df %>%
  filter(date %in% selected_dates) %>%
  select(in.county, date, in.city, total_energy, new_total_energy)

ui <- fluidPage(
  titlePanel("Predicted Energy Consumption with 5 Degrees increase in temperatue"),
  
  mainPanel(
    
    mainPanel(
      selectInput("county", "Select County:", 
                  choices = c("All" = "All", unique(predicted_df$in.county))),
      dateRangeInput("dateRange", "Select Date Range:", 
                     start = min(predicted_df$date), end = max(predicted_df$date))
    ),
    mainPanel(
      fluidRow(
        column(12, plotOutput("totalEnergyPlot")),
      ),
      fluidRow(
        column(12, plotOutput("newtotalEnergyPlot")),
      ),
      fluidRow(
        column(12, plotOutput("countyEnergyPlot")),
      ),
      fluidRow(
        column(12, plotOutput("countynewEnergyPlot")),
      ),
      fluidRow(
        column(12, plotOutput("cityEnergyPlot")),
      ),
      fluidRow(
        column(12, plotOutput("citynewEnergyPlot")),
      ),
      fluidRow(
        column(12, plotOutput("applianceEnergyPlot")),
      ),
      fluidRow(
        column(12, plotOutput("appliancenewEnergyPlot")),
      )
      
      
    )
  ))

server <- function(input, output) {
  
  # Reactive expression for filtered data
  filteredData <- reactive({
    if (input$county == "All") {
      predicted_df %>%
        filter(date >= input$dateRange[1], date <= input$dateRange[2])
    } else {
      predicted_df %>%
        filter(in.county == input$county, date >= input$dateRange[1], date <= input$dateRange[2])
    }
  })
  
  # Total energy consumption plot
  output$totalEnergyPlot <- renderPlot({
    data <- tryCatch({
      filteredData()
    }, error = function(e) {
      return(data.frame())  # Return an empty data frame in case of error
    })
    
    if (nrow(data) > 0) {
      unique_dates <- unique(data$date)
      num_colors <- length(unique_dates)
      color_palette <- viridisLite::viridis(num_colors)  # Using the viridis color palette
      
      ggplot(data, aes(x = date, y = total_energy, fill = as.factor(date))) +
        geom_bar(stat = "identity") +
        scale_fill_manual(values = color_palette) +
        labs(title = "Daily Energy Usage Patterns", x = "date", y = "Total Energy") +
        theme_minimal() +
        theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
              axis.title.x = element_text(size = 14),
              axis.title.y = element_text(size = 14),
              axis.text = element_text(size = 10),
              axis.text.x = element_text(angle = 45, hjust = 1),
              plot.margin = margin(10, 10, 10, 10),        # Adjust these values as needed
              panel.spacing = unit(1, "lines") )
    }
  })
  
  output$newtotalEnergyPlot <- renderPlot({
    data <- tryCatch({
      filteredData()
    }, error = function(e) {
      return(data.frame())  # Return an empty data frame in case of error
    })
    
    if (nrow(data) > 0) {
      unique_dates <- unique(data$date)
      num_colors <- length(unique_dates)
      color_palette <- viridisLite::viridis(num_colors)  # Using the viridis color palette
      
      ggplot(data, aes(x = date, y = new_total_energy, fill = as.factor(date))) +
        geom_bar(stat = "identity") +
        scale_fill_manual(values = color_palette) +
        labs(title = "Predicted Daily Energy Usage Patterns", x = "date", y = "Total Energy") +
        theme_minimal() +
        theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
              axis.title.x = element_text(size = 14),
              axis.title.y = element_text(size = 14),
              axis.text = element_text(size = 10),
              axis.text.x = element_text(angle = 45, hjust = 1),
              plot.margin = margin(10, 10, 10, 10),        # Adjust these values as needed
              panel.spacing = unit(1, "lines") )
    }
  })
  
  # Energy consumption by appliances plot (Scatter Plot)
  output$applianceEnergyPlot <- renderPlot({
    # Assuming predicted_df is your dataframe
    library(ggplot2)
    
    ggplot(predicted_df, aes(x = date, y = total_energy)) +
      geom_point(size = 0.5, color = "#d73027", alpha = 0.7) +  # Using a different color
      labs(title = "Daily Energy Consumption vs Date",
           x = "Date",
           y = "Daily Energy Consumption") +
      theme_minimal() +
      theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
            axis.title.x = element_text(size = 14),
            axis.title.y = element_text(size = 14),
            axis.text = element_text(size = 10),
            axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  # Energy consumption by appliances plot (Scatter Plot)
  output$appliancenewEnergyPlot <- renderPlot({
    # Assuming predicted_df is your dataframe
    library(ggplot2)
    
    ggplot(predicted_df, aes(x = date, y = new_total_energy)) +
      geom_point(size = 0.5, color = "#d73027", alpha = 0.7) +  # Using a different color
      labs(title = "Predicted Daily Energy Consumption vs Date",
           x = "Date",
           y = "Daily Energy Consumption") +
      theme_minimal() +
      theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
            axis.title.x = element_text(size = 14),
            axis.title.y = element_text(size = 14),
            axis.text = element_text(size = 10),
            axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  # Energy consumption by county plot (Box Plot)
  output$countyEnergyPlot <- renderPlot({
    # Assuming predicted_df is your dataframe
    ggplot(predicted_df, aes(x = in.county, y = total_energy)) +
      geom_boxplot(fill = "#4daf4a", alpha = 0.7) +  # Using a different color
      labs(title = "Distribution of Energy Usage in the month July by County",
           x = "County",
           y = "Daily Energy Consumption",
           caption = "Source: Your Company") +
      theme_minimal() +
      theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
            axis.title.x = element_text(size = 14),
            axis.title.y = element_text(size = 14),
            axis.text = element_text(size = 10),
            axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  
  # Energy consumption by county plot (Box Plot)
  output$countynewEnergyPlot <- renderPlot({
    # Assuming predicted_df is your dataframe
    ggplot(predicted_df, aes(x = in.county, y = new_total_energy)) +
      geom_boxplot(fill = "#4daf4a", alpha = 0.7) +  # Using a different color
      labs(title = "Predicted Distribution of Energy Usage in the month July by County",
           x = "County",
           y = "Daily Energy Consumption",
           caption = "Source: Your Company") +
      theme_minimal() +
      theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
            axis.title.x = element_text(size = 14),
            axis.title.y = element_text(size = 14),
            axis.text = element_text(size = 10),
            axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  
  # Daily total electricity consumption by city (Stacked Bar Plot)
  output$cityEnergyPlot <- renderPlot({
    data <- tryCatch({
      filteredData()
    }, error = function(e) {
      return(data.frame())  # Return an empty data frame in case of error
    })
    
    if (nrow(data) > 0) {
      ggplot(data, aes(x = date, y = total_energy, fill = in.city)) +
        geom_bar(stat = "sum") +
        labs(title = "Daily Total Energy used by City", x = "date", y = "Daily Total Energy") +
        theme_minimal() +
        theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
              axis.title.x = element_text(size = 14),
              axis.title.y = element_text(size = 14),
              axis.text = element_text(size = 10),
              axis.text.x = element_text(angle = 45, hjust = 1))
    }
  })
  
  output$citynewEnergyPlot <- renderPlot({
    data <- tryCatch({
      filteredData()
    }, error = function(e) {
      return(data.frame())  # Return an empty data frame in case of error
    })
    
    if (nrow(data) > 0) {
      ggplot(data, aes(x = date, y = new_total_energy, fill = in.city)) +
        geom_bar(stat = "sum") +
        labs(title = "Predicted Daily Total Energy used by City", x = "date", y = "Daily Total Energy") +
        theme_minimal() +
        theme(plot.title = element_text(hjust = 0.5, size = 18, face = "bold"),
              axis.title.x = element_text(size = 14),
              axis.title.y = element_text(size = 14),
              axis.text = element_text(size = 10),
              axis.text.x = element_text(angle = 45, hjust = 1))
    }
  })
  
}

shinyApp(ui = ui, server=server)
